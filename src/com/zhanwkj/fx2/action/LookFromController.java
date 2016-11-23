package com.zhanwkj.fx2.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zhanwkj.fx2.dao.FansMapper;
import com.zhanwkj.fx2.dao.Fx2Mapper;
import com.zhanwkj.fx2.dao.SeeHouseMapper;
import com.zhanwkj.fx2.model.Fans;
import com.zhanwkj.fx2.model.FansWithBLOBs;
import com.zhanwkj.fx2.model.Fx2;
import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.model.SeeHouse;
import com.zhanwkj.fx2.service.RentHouseService;
import com.zhanwkj.fx2.utils.DateUtil;
import com.zhanwkj.fx2.utils.HouseUtil;
import com.zhanwkj.fx2.utils.Query;
import com.zhanwkj.fx2.utils.getMoreUtil;

/**
 * 
 * @desc:约看逻辑控制层
 * @author Chitry
 * @className:LookFromController
 * @time:下午7:58:28
 */
@RequestMapping("Look")
@Controller
public class LookFromController {
	@Autowired
	RentHouseService rentHouseService;
	@Autowired
	FansMapper fansMapper;
	@Autowired
	SeeHouseMapper seeHouseMapper;
	@Autowired
	Fx2Mapper fx2Mapper;

	/**
	 * 加入约看清单,设置蜂小二
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("sendForm")
	public String sendForm(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam("id") Integer houseid) {
		// 1.获取当前用户id
		Fans user = new Fans();
		user = (Fans) session.getAttribute("user");
		// 2.根据房源id获取绑定的蜂小二id
		RentHouse rh = this.rentHouseService.selectByPrimaryKey(houseid);
		Integer fx2id = rh.getFid();
		// 3.新增约看记录
		SeeHouse sh = new SeeHouse();
		sh.setFx2id(fx2id);
		sh.setUid(user.getId());
		sh.setRentid(houseid);
		sh.setIspay(0);
		sh.setSeenum(0);
		sh.setStatus(0);
		sh.setYytime("0");
		seeHouseMapper.insertSelective(sh);
		Fx2 fx2 = new Fx2();
		fx2 = fx2Mapper.selectByPrimaryKey(fx2id);
		session.setAttribute("FX", fx2);
		// 转向约看清单加入成功，蜂小二正在分配提示
		return "forward:/Home/look/payform.jsp";
	}

	/**
	 * 多个加入约看清单,设置蜂小二
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("sendFormMore")
	public String sendFormMore(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		System.out.println("加入约看单,设置蜂小二");
		Fans user = new Fans();
		SeeHouse sh = new SeeHouse();
		user = (Fans) session.getAttribute("user");
		String[] id1 = request.getParameterValues("house1");
		int fx2ids[] = new int[id1.length];
		for (int i = 0; i < id1.length; i++) {// 得到蜂小二id集合
			// 2.根据房源id获取绑定的蜂小二id
			RentHouse rh = this.rentHouseService.selectByPrimaryKey(Integer.parseInt(id1[i]));
			Integer fx2id = rh.getFid();
			fx2ids[i] = fx2id;
		}
		int morefid = getMoreUtil.getmore(fx2ids);// 锁定本次业务的受理蜂小二

		// 3.新增约看记录

		sh.setFx2id(morefid);
		sh.setUid(user.getId());
		sh.setIspay(0);
		sh.setSeenum(0);
		sh.setStatus(0);
		sh.setYytime("0");
		for (int i = 0; i < id1.length; i++) {
			sh.setRentid(Integer.parseInt(id1[i]));
			seeHouseMapper.insertSelective(sh);
		}
		Fx2 fx2 = new Fx2();
		fx2 = fx2Mapper.selectByPrimaryKey(morefid);
		session.setAttribute("hnum", id1.length);// 返回提交的房源个数
		session.setAttribute("FX", fx2);
		// 转向约看清单加入成功，蜂小二正在分配提示
		return "forward:/Home/look/payform.jsp";
	}

	/**
	 * 查看用户约看清单
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("lookForm")
	public String lookform(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		Fans fans = (Fans) session.getAttribute("user");
		Query query = new Query();
		// 1.条件1：用户
		List<SeeHouse> see = new ArrayList<SeeHouse>();
		query.setUid(fans.getId());//为Query增加用户id条件
		see = this.seeHouseMapper.findByQuery(query);// 查出所有相关用户的约看数据
		// 2.条件2：预约时间组：可能多个
		List<String> seeyytime = new ArrayList<String>();
		seeyytime = this.seeHouseMapper.getDistinctYytime(query);// 得到uid条件下的不重复yytime组
																	// 【祖父代节点】
		List<Map<String,Integer>> sumlists = new ArrayList<Map<String,Integer>>();//定义存储约看组数的map
		//根据当前用户id和预约时间去查蜂小二id组：可能多个
		List<Map<String, List<Map<Fx2,List<RentHouse>>>>> fatherlists = new ArrayList<Map<String, List<Map<Fx2,List<RentHouse>>>>>();//父代对象树
		for(int i=seeyytime.size()-1;i>=0;i--){//倒叙输出
			if(seeyytime.get(i)==null||seeyytime.get(i).equals("0")) continue;//去除恶性数据
			List<Integer> fxids = new ArrayList<Integer>();
			query.setYytime(seeyytime.get(i));//为query增加预约时间条件
			fxids = this.seeHouseMapper.getFxidByUidandYytime(query);//得到预约时间和用户id条件下的的蜂小二id组 【父代节点】
			//根据当前用户id，预约时间和蜂小二id去查询房源id组：可能多个
			Fx2 fx2 = new Fx2();
			int sum = 0;
			List<Map<Fx2,List<RentHouse>>> sonlists = new ArrayList<Map<Fx2,List<RentHouse>>>();//子代对象树
			for(int j=0;j<fxids.size();j++){
				System.out.println("fxids:"+fxids.get(j));
				List<RentHouse> rentHouses = new ArrayList<RentHouse>();
				List<Integer> rentids = new ArrayList<Integer>();
				query.setFid(fxids.get(j));//为query增加蜂小二id条件
				rentids = this.seeHouseMapper.getRentidByFYU(query);//得到预约时间/用户id/蜂小二id条件下的房源id组【子代节点】
				//根据得到的房源id组一次去房源数据表中查询详细的房源数据
				/**
				 * 完善子代关系网散列图Map
				 */
				if(j!=0){
					if(fxids.get(j)==fxids.get(j-1))continue;//去除良性重复数据
					
				}
				for(int k=0;k<rentids.size();k++){
					RentHouse rent = new RentHouse();
					rent = this.rentHouseService.selectByPrimaryKey(rentids.get(k));//得到子代节点数据
					rent  = HouseUtil.setRentHouse(rent);
					rent = HouseUtil.setRentHousesimPic(rent);
					rentHouses.add(rent);//【填充子代数据】
					sum++;
					System.out.println("\n\n\n累计:"+sum+"\n\nid:"+rent.getTitle());
				}
				
				fx2 = this.fx2Mapper.selectByPrimaryKey(fxids.get(j));//得到蜂小二关系对象
				Map<Fx2, List<RentHouse>> sonitems = new HashMap<Fx2, List<RentHouse>>();//蜂小二对象对应房源列表Map
				
				sonitems.put(fx2, rentHouses);
				sonlists.add(sonitems);
			}
			/**
			 * 完善父代关系网散列图Map
			 */
			Map<String,Integer> map = new HashMap<String,Integer>();
			map.put(seeyytime.get(i), sum);
			sumlists.add(map);
			Map<String, List<Map<Fx2,List<RentHouse>>>> fatheritems = new HashMap<String, List<Map<Fx2,List<RentHouse>>>>();//预约时间对应子代Map
			fatheritems.put(seeyytime.get(i), sonlists);
			fatherlists.add(fatheritems);
			
		}
		/**
		 * 用户数据获取
		 */
		// 1.约看服务周期
		// a.已支付
		Query q = new Query();
		q.setUid(fans.getId());
		q.setIspay(1);
		// b.离我时间最近:max(id)
		SeeHouse s = new SeeHouse();
		int maxid = this.seeHouseMapper.selectService(q);
		s = this.seeHouseMapper.selectByPrimaryKey(maxid);
		// c.计算服务周期
		int sday = 7;
		Integer ii = s.getPaytype();
		if (ii == null) {
			System.out.println("fnaivainva");
		}
		if (s.getPaytype() == 2) {
			sday = 15;
		}
		String fdate = DateUtil.getFuture(sday, s.getSeetime());
		String servicedate = "截至" + fdate;
		session.setAttribute("servicedate", servicedate);
		// 带看次数
		Query qq = new Query();
		qq.setUid(fans.getId());
		int num = this.seeHouseMapper.countSeenum(qq);
		session.setAttribute("seenum", num);
		session.setAttribute("sumlists", sumlists);
		session.setAttribute("fatherlists", fatherlists);
		return "forward:/Home/look/seelist.jsp";
	}

	/**
	 * 当前蜂小二查看约看清单
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("lookFX2Form")
	public String lookFX2form(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		Fx2 fx2 = new Fx2();
		fx2 = (Fx2) session.getAttribute("fx2");
		Query query = new Query();
		
		// 1.条件1：当前蜂小二
		List<SeeHouse> see = new ArrayList<SeeHouse>();
		query.setFid(fx2.getId());//为Query增加蜂小二id条件
		see = this.seeHouseMapper.findByQuery(query);// 查出所有相关用户的约看数据
		// 2.条件2：预约时间组：可能多个
		List<String> seeyytime = new ArrayList<String>();
		seeyytime = this.seeHouseMapper.getDistinctFxYytime(query);// 得到fid条件下的不重复yytime组 【祖父代节点】
		List<Map<String,Integer>> sumlists = new ArrayList<Map<String,Integer>>();//定义存储约看组数的map
		//根据当前蜂小二id和预约时间去查用户id组：可能多个
		List<Map<String, List<Map<Fans,List<RentHouse>>>>> fatherlists = new ArrayList<Map<String, List<Map<Fans,List<RentHouse>>>>>();//父代对象树
		for(int i=0;i<seeyytime.size();i++){
			if(seeyytime.get(i)==null||seeyytime.get(i).equals("0")) continue;
			List<Integer> uids = new ArrayList<Integer>();
			query.setYytime(seeyytime.get(i));//为query增加预约时间条件
			uids = this.seeHouseMapper.getUidByFx2idandYytime(query);//得到预约时间和蜂小二id条件下的用户id组 【父代节点】
			//根据当前蜂小二id，预约时间和用户id去查询房源id组：可能多个
			Fans user = new Fans();
			int sum = 0;
			List<Map<Fans,List<RentHouse>>> sonlists = new ArrayList<Map<Fans,List<RentHouse>>>();//子代对象树
			for(int j=uids.size()-1;j>=0;j--){
				List<RentHouse> rentHouses = new ArrayList<RentHouse>();
				List<Integer> rentids = new ArrayList<Integer>();
				query.setUid(uids.get(j));//为query增加用户id条件
				rentids = this.seeHouseMapper.getRentidByFYU(query);//得到预约时间/用户id/蜂小二id条件下的房源id组【子代节点】
				//根据得到的房源id组一次去房源数据表中查询详细的房源数据
				/**
				 * 完善子代关系网散列图Map
				 */
				if(j!=0){
					if(uids.get(j)==uids.get(j-1))continue;//取出良性重复数据
				}
				for(int k=0;k<rentids.size();k++){
					RentHouse rent = new RentHouse();
					rent = this.rentHouseService.selectByPrimaryKey(rentids.get(k));//得到子代节点数据
					rent = HouseUtil.setRentHouse(rent);
					rent = HouseUtil.setRentHousesimPic(rent);
					rentHouses.add(rent);//【填充子代数据】
					sum++;
				}
				user = this.fansMapper.selectFansByPrimaryKey(uids.get(j));//得到用户关系对象
				Map<Fans, List<RentHouse>> sonitems = new HashMap<Fans, List<RentHouse>>();//用户对象对应房源列表Map
				sonitems.put(user, rentHouses);
				sonlists.add(sonitems);
			}
			/**
			 * 完善父代关系网散列图Map
			 */
			Map<String,Integer> map = new HashMap<String,Integer>();
			map.put(seeyytime.get(i), sum);
			sumlists.add(map);
			Map<String, List<Map<Fans,List<RentHouse>>>> fatheritems = new HashMap<String, List<Map<Fans,List<RentHouse>>>>();//预约时间对应子代Map
			fatheritems.put(seeyytime.get(i), sonlists);
			fatherlists.add(fatheritems);
			
		}
		session.setAttribute("sumseelists", sumlists);
		session.setAttribute("fatherseelists", fatherlists);
		return "forward:/Home/fx2/fxseelist.jsp";
	}
}
