package com.zhanwkj.fx2.action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zhanwkj.fx2.constant.ApartType;
import com.zhanwkj.fx2.constant.ChickTimeType;
import com.zhanwkj.fx2.constant.HouseType;
import com.zhanwkj.fx2.constant.PayType;
import com.zhanwkj.fx2.constant.RenovationType;
import com.zhanwkj.fx2.constant.ShenFenType;
import com.zhanwkj.fx2.constant.SpType;
import com.zhanwkj.fx2.constant.StudioType;
import com.zhanwkj.fx2.constant.TrusType;
import com.zhanwkj.fx2.constant.UpType;
import com.zhanwkj.fx2.constant.WriteType;
import com.zhanwkj.fx2.dao.CollectMapper;
import com.zhanwkj.fx2.dao.CommentMapper;
import com.zhanwkj.fx2.dao.FansMapper;
import com.zhanwkj.fx2.dao.Fx2Mapper;
import com.zhanwkj.fx2.dao.RentHouseMapper;
import com.zhanwkj.fx2.dao.SeeHouseMapper;
import com.zhanwkj.fx2.model.Collect;
import com.zhanwkj.fx2.model.Comment;
import com.zhanwkj.fx2.model.Fans;
import com.zhanwkj.fx2.model.FansWithBLOBs;
import com.zhanwkj.fx2.model.Fx2;
import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.model.SeeHouse;
import com.zhanwkj.fx2.service.RentHouseService;
import com.zhanwkj.fx2.utils.DateUtil;
import com.zhanwkj.fx2.utils.HouseUtil;
import com.zhanwkj.fx2.utils.Query;

/**
 * 
 * @desc:用户逻辑控制层
 * @author Chitry
 * @className:UserController
 * @time:下午7:58:28
 */
@RequestMapping("User")
@Controller
public class UserController {

	@Autowired
	FansMapper fansMapper;
	@Autowired
	RentHouseService rentHouseService;
	@Autowired
	SeeHouseMapper seeHouseMapper;

	@Autowired
	Fx2Mapper fx2mapper;

	@Autowired
	RentHouseMapper rentHouseMapper;
	@Autowired
	CommentMapper commentMapper;
	@Autowired
	CollectMapper collectMapper;
	
	/**
	 * 添加用户测试
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("addUser")
	public String adduser(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		Fans user = new FansWithBLOBs();
		user.setOpenid("1313465461646");
		user.setNickname("4646");
		user.setSex(1);
		user.setProvince("湖北");
		user.setCity("黄石");
		user.setCountry("中国");
		user.setHeadimgurl("http://wx.qlogo.cn/mmopen/R1TYAJ5QUiaRF1BepgzQskZXhmDyZO48SZRGdAP3Z92sSY0v474Hib8INiaM0P4ibL3kJX5CoOEA4NcD3rNaKNNTEg/0");
		user.setIntegral(0);
		user.setGroupid(0);
		user.setPrice("0");
		fansMapper.insertSelective(user);
		return null;
		
	}
	/**
	 * 用户信息完善逻辑
	 * @author bujie
	 * @description	数据限制：当前用户id以及页面上输入的姓名电话号码
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("addper")
	public String init1(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// RentHouse r =rentHouseMapper.selectByPrimaryKey(2);
		Fans fns = new Fans();

		try {
			String name = request.getParameter("turename");
			int sex = Integer.parseInt(request.getParameter("sex"));
			String tel = request.getParameter("tel");
			Fans fans = (Fans) session.getAttribute("user");
			fns.setTruename(name);
			fns.setMobile(tel);
			fns.setSex(sex);
			fns.setId(fans.getId());
			fns.setType(fans.getType());
			fns.setOpenid(fans.getOpenid());
			fns.setNickname(fans.getNickname());
			fns.setLanguage(fans.getLanguage());
			fns.setCity(fans.getCity());
			fns.setProvince(fans.getProvince());
			fns.setCountry(fans.getCountry());
			fns.setHeadimgurl(fans.getHeadimgurl());
			fns.setUnionid(fans.getUnionid());
			fns.setGroupid(fans.getGroupid());
			fns.setMobile(fans.getMobile());
			fns.setBindtime(fans.getBindtime());
			fns.setPrice(fans.getPrice());
			fns.setSigntime(fans.getSigntime());
			fansMapper.updateByPrimaryKey(fns);


		} catch (Exception e) {
			e.printStackTrace();
		}
		return "forward:/Home/index.jsp";
	}
	/**
	 * 签到实现
	 * @author bujie
	 * @description	数据限制：当前用户id
	 * @param response
	 * @param session
	 * @throws IOException
	 */
	@RequestMapping("qiandao")
	public void init(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {

		
		String tt="false";
		String now1 = DateUtil.getnow();
		String[] time1 =now1.split(" ");
		String[] time2 =time1[0].split("-");
		int mo =Integer.parseInt(time2[1]);
		int da = Integer.parseInt(time2[2]);
		Fans fans=(Fans)session.getAttribute("user");
		Fans temp=fansMapper.selectFansByPrimaryKey(fans.getId());
		String time = temp.getSigntime();
		String[] time3 =time.split(" ");
		String[] time4 =time3[0].split("-");
		int mo2 =Integer.parseInt(time4[1]);
		int da2 = Integer.parseInt(time4[2]);
		if(time==null||mo>mo2||(mo==mo2&&da>da2))  //如果签到时间超过一天
		{	
			fans.setSigntime(now1);
			fansMapper.updateByPrimaryKey(fans);
			tt="true";
			response.getWriter().write(tt);
		}else{
			response.getWriter().write(tt);
		}

	}

	/**
	 *进入我的fx2页面
	 * @author zhou
	 * @descrption	 数据限制：当前用户id
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("myfx2")
	public String init4(HttpServletRequest request, HttpServletResponse response, HttpSession session)  {
		/**
		 * 进入我的fx2页面
		 */
		int i = 0;
		Fans fans=(Fans)session.getAttribute("user");//获取当前用户
		int fans_id = fans.getId(); 						
		Query query = new Query();
		query.setUid(fans_id);

		List<SeeHouse> fx2list =  seeHouseMapper.findByQuery(query);  //得到约看表里面我的所有fx2
		for  (   i  =   0 ; i  <  fx2list.size()  -   1 ; i ++ )  {  //循环删除重复的fx2   
			for  ( int  j  =  fx2list.size()  -   1 ; j  >  i; j -- )  {     
				if  (fx2list.get(j).getFx2id()==(fx2list.get(i).getFx2id()))  {     
					fx2list.remove(j);     
				}      
			}      
		} 
		
		List<Fx2> myfx2 = new ArrayList<Fx2>();
		i=0;
		for(SeeHouse see :fx2list){
			
			
			myfx2.add((fx2mapper.selectByPrimaryKey(see.getFx2id())));
		}

	
		session.setAttribute("seehouse", fx2list);	//fx2的约看列表
		session.setAttribute("myfx2", myfx2);
		return "forward:/Home/user/myfx2.jsp";
	}
	/**
	 * 进入评价我的fx2页面
	 * @author zhou
	 * @descrption	 数据限制：当前用户id以及被评价蜂小二
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("intoscore")
	public String init5(HttpServletRequest request, HttpServletResponse response, HttpSession session)  {

		
		Fans fans=(Fans)session.getAttribute("user");
		int userid = fans.getId();
		
		int fx2_id  =Integer.parseInt(request.getParameter("hid"));//fx2的id
		List<Comment> mycom = commentMapper.findAllByFid(fx2_id);//fx2的所有评价列表
		List<Comment> mycom2 = new ArrayList<Comment>();//fx2评价列表中该用户的已经做过的评价
		for(Comment e:mycom){
			if(e.getUid()==userid)
				mycom2.add(e);
		}
		Query qu =new Query();
		qu.setFid(fx2_id);
		List<SeeHouse> mySeeHouses2 =seeHouseMapper.findByQuery(qu);//约看表中我与该fx2的约看
		List<SeeHouse> mySeeHouses = new ArrayList<SeeHouse>();
		for(SeeHouse e:mySeeHouses2){
			if(e.getUid()==userid)
				mySeeHouses.add(e);
		}
		int scoreNum = mySeeHouses.size()-mycom2.size();

		List<String> name = new ArrayList<String>();
		for(Comment a: mycom){
			int temp = a.getUid();
			Fans name1 =fansMapper.selectFansByPrimaryKey(temp); 
			String name2 =name1.getNickname(); 
			name.add(name2);
		}
		Fx2 fx2 = fx2mapper.selectByPrimaryKey(fx2_id);
		session.setAttribute("scoNum", scoreNum);
		session.setAttribute("fx2msg", fx2);//找到该fx2
		session.setAttribute("name", name);		
		session.setAttribute("fx2id", fx2_id);
		session.setAttribute("myfx2com", mycom);  //该蜂小二的整体评价列表
		session.setAttribute("mySeeHouses", mySeeHouses);  //该用户与该fx2的约看列表
		session.setAttribute("mycom2", mycom2);  //该用户与该fx2的评价列表
		return "forward:/Home/user/scorefx2.jsp";
	}
	/**
	 * 评价蜂小二逻辑实现
	 * @author zhou
	 * @descrption	 数据限制：当前用户id以及进入上一页面得到的与该蜂小二的约看列表
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("comment")
	public String init6(HttpServletRequest request, HttpServletResponse response, 
			HttpSession session)  {

		Comment comment = new Comment();
		Fans fans=(Fans)session.getAttribute("user");//获取当前用户
		int userid = fans.getId();
		String time = DateUtil.getnow(); //评价表的时间
		
		int fx2_id = (int) session.getAttribute("fx2id");
		Query qu =new Query();
		qu.setFid(fx2_id);
		List<SeeHouse> mySeeHouses2 =seeHouseMapper.findByQuery(qu);//约看表中我与该fx2的约看
		List<SeeHouse> mySeeHouses = new ArrayList<SeeHouse>();
		for(SeeHouse e:mySeeHouses2){
			if(e.getUid()==userid)
				mySeeHouses.add(e);//获取该用户与该fx2的约看列表
		}
		List<Comment> mycom = commentMapper.findAllByFid(fx2_id);//fx2的所有评价列表
		List<Comment> mycom2 = new ArrayList<Comment>();//fx2评价列表中该用户的已经做过的评价
		for(Comment e:mycom){
			if(e.getUid()==userid)
				mycom2.add(e);//获取该用户与该fx2的评价列表
		}
		int scoreNum = mySeeHouses.size()-mycom2.size();
		if(scoreNum>0){

		Fx2 fx2=(Fx2)session.getAttribute("fx2msg");
		String txt = request.getParameter("textarea");  //获取评价内容
		String score = request.getParameter("score");  //评分 
		if(score == null)
			score="5";
	
		
		comment.setFid(fx2.getId());	//被评价的fx2的id放进去
		comment.setUid(fans.getId());  //用户id放进去
		comment.setTime(time);
		comment.setContent(txt);
		comment.setScore(score);//星星评分那个
		comment.setSid(mySeeHouses.get(mycom2.size()).getId());//将sid放进去
		commentMapper.insert(comment);
		request.getSession().setAttribute("hid",fx2.getId());
		}
		return initff(request,response,session);
	}

	private String initff(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		Fans fans=(Fans)session.getAttribute("user");
		int userid = fans.getId();
		
		int fx2_id  =(int) request.getSession().getAttribute("hid");//fx2的id
		List<Comment> mycom = commentMapper.findAllByFid(fx2_id);//fx2的所有评价列表
		List<Comment> mycom2 = new ArrayList<Comment>();//fx2评价列表中该用户的已经做过的评价
		for(Comment e:mycom){
			if(e.getUid()==userid)
				mycom2.add(e);
		}
		Query qu =new Query();
		qu.setFid(fx2_id);
		List<SeeHouse> mySeeHouses2 =seeHouseMapper.findByQuery(qu);//约看表中我与该fx2的约看
		List<SeeHouse> mySeeHouses = new ArrayList<SeeHouse>();
		for(SeeHouse e:mySeeHouses2){
			if(e.getUid()==userid)
				mySeeHouses.add(e);
		}
		int scoreNum = mySeeHouses.size()-mycom2.size();

		List<String> name = new ArrayList<String>();
		for(Comment a: mycom){
			int temp = a.getUid();
			Fans name1 =fansMapper.selectFansByPrimaryKey(temp); 
			String name2 =name1.getNickname(); 
			name.add(name2);
		}
		Fx2 fx2 = fx2mapper.selectByPrimaryKey(fx2_id);
		session.setAttribute("scoNum", scoreNum);
		session.setAttribute("fx2msg", fx2);//找到该fx2
		session.setAttribute("name", name);		
		session.setAttribute("fx2id", fx2_id);
		session.setAttribute("myfx2com", mycom);  //该蜂小二的整体评价列表
		session.setAttribute("mySeeHouses", mySeeHouses);  //该用户与该fx2的约看列表
		session.setAttribute("mycom2", mycom2);  //该用户与该fx2的评价列表
		return "forward:/Home/user/scorefx2.jsp";
	}
	/**
	 * 是否允许进行评价
	 * 每次支付完成之后允许评价，且只能评价一次
	 * @author zhou
	 * @descrption	 数据限制：当前用户id以及被评价蜂小二id
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("iscomment")
	public void iscomment(HttpServletRequest request, HttpServletResponse response, 
			HttpSession session,@RequestParam("id") Integer seeid) throws IOException  {
		
		Fans user = (Fans) session.getAttribute("user");

		//约看单结束与否无关
		/**
		 * 1.判断是否已经进行了评价
		 */
		SeeHouse sh = new SeeHouse();
		sh = this.seeHouseMapper.selectByPrimaryKey(seeid);

		if(sh.getComment()!=null){
			response.getWriter().print(false);
		}
		response.getWriter().print(true);

	}

	/**
	 * 进入我的支付历史页面
	 * @author zhou
	 * @descrption	 数据限制：当前用户id
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */

	@RequestMapping("myhistoryMsg")
	public String init7(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		Fans user = (Fans) session.getAttribute("user");
	
		Query query  =new Query();
		query.setUid(user.getId());
		List<SeeHouse> seelist = seeHouseMapper.findByQuery(query);  //所有跟自己有关的支付列
		List<String> name = new ArrayList<String>();
		List<RentHouse> ren = new ArrayList<RentHouse>();
		for(SeeHouse e:seelist){
			RentHouse temp =rentHouseMapper.selectRenthouseOne(e.getRentid());
			name.add(temp.getTitle());
			ren.add(temp);
		}
		session.setAttribute("name", name);
		session.setAttribute("ren", ren);
		session.setAttribute("history", seelist);
		return "forward:/Home/user/historylist.jsp";

	}

	/**
	 * 进入我是房东页面
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("myhouse")
	public String init8(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		/**
		 * 我是房东
		 */
		Fans fans = (Fans) session.getAttribute("user");
		Query b = new Query();
		b.setUid(fans.getId());
		List<String> pic = new ArrayList<String>();

		String te2;
		List<RentHouse> zzhouse = new ArrayList<RentHouse>();
		List<RentHouse> bghouse = new ArrayList<RentHouse>();
		List<RentHouse> sphouse = new ArrayList<RentHouse>();
		List<RentHouse> tem = rentHouseMapper.selectQuery(b);  //通过用户id找到房子

		for(RentHouse a:tem){
			te2 = a.getPicurl();
			String[] te = te2.split("-");
			pic.add(te[0]);			//取房子的第一张照片作为id照
			a.setPicurl(te[0]);
			if(a.getType()==1){
				zzhouse.add(a);
			}else if(a.getType()==2)
			{
				bghouse.add(a);
			}
			else{
				sphouse.add(a);
			}
		}
		session.setAttribute("zzhouse1", zzhouse);
		session.setAttribute("bghouse1", bghouse);
		session.setAttribute("sphouse1", sphouse);
		session.setAttribute("pic", pic);
		session.setAttribute("myhouse1", tem);
		return "forward:/Home/user/myhouse.jsp";
	}

	/**
	 * 点击房源列表展现房源信息
	 * @author zhou
	 * @descrption	 数据限制：当前房源在页面显示的序列号码
	 * @param request
	 * @param response
	 * @param session
	 * @param id
	 * @return
	 */
	@RequestMapping("dhouse")
	public String init9(HttpServletRequest request, HttpServletResponse response, HttpSession session, @RequestParam("id") Integer id){

		RentHouse r = this.rentHouseService.selectRenthouseOne(id);
		if (r.getChicktime().equals("1")) {
			r.setChicktime(ChickTimeType.C1);
		}
		r.setRenttype(HouseType.setHouseType(r.getType()));
		r.setRentaparttype(ApartType.setApartType(r.getAparttype()));
		r.setRentsptype(SpType.setSpType(r.getSptype()));
		r.setRentrenovation(RenovationType.setRenovationType(r.getRenovation()));
		r.setRentpaytype(PayType.setPayType(r.getPaytype()));
		r.setRentshenfen(ShenFenType.setShenFenType(r.getShenfen()));
		r.setRentisup(UpType.setUpType(r.getIsup()));
		r.setRentiswrite(WriteType.setWriteType(r.getIswrite()));
		r.setRentstatus(UpType.setUpType(r.getStatus()));
		r.setRentstudio(StudioType.setStudioType(r.getStudio()));
		r.setRenttrus(TrusType.setTrusType(r.getTrus()));
		List<String> url = new ArrayList<String>();
		for (String s : r.getPicurl().split("-")) {
			url.add(s);
		}
		String[] equitment = r.getEquitment().split("/");

		session.setAttribute("RH", r);//单个房源
		session.setAttribute("url", url);//此房源图片集合
		session.setAttribute("equitment", equitment);//此房源配套设施数组

		Fans fans = (Fans)session.getAttribute("user");
		Query query = new Query();
		query.setUid(fans.getId());
		query.setRid(id);
		int co = this.collectMapper.selectByUidRentIs(query);
		int iscollect = 0;
		if (co > 0) {
			iscollect = 1;
		}
		session.setAttribute("iscollect", Integer.valueOf(iscollect));
		
		int se = this.seeHouseMapper.selectByUidSeeRentIs(query);
		int see = 0;
		if (se > 0)  see = 1;

		session.setAttribute("see", Integer.valueOf(see));

		String path = "";
		switch (r.getType().intValue()) {
		case 1:
			path = "forward:/Home/house/housedetail.jsp";
			break;
		case 2:
			path = "forward:/Home/house/bangondetail.jsp";
			break;
		case 3:
			path = "forward:/Home/house/shangpudetail.jsp";
		}
		return path;
	}


	@RequestMapping("shangjia")
	public void shangjia(HttpServletRequest request,@RequestParam("str") String str, HttpServletResponse response, HttpSession session) throws Exception {
		String ss[] = str.split("/");
		System.out.println(ss.length);
		for (int i = 0; i < ss.length; i++) {
			String s = ss[i];
			try {
				RentHouse rh=  rentHouseMapper.selectByPrimaryKey(Integer.valueOf(s));
				rh.setStatus(1);
				rentHouseMapper.updateByPrimaryKeySelective(rh);
			} catch (Exception e) {
				continue;
			}
		}
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println("true");
	}

	@RequestMapping("xiajia")
	public void xiajia(HttpServletRequest request, HttpServletResponse response,@RequestParam("str") String str, HttpSession session) throws Exception {
		String ss[] = str.split("/");
		System.out.println(ss.length);
		for (int i = 0; i < ss.length; i++) {
			String s = ss[i];
			try {
				RentHouse rh=  rentHouseMapper.selectByPrimaryKey(Integer.valueOf(s));
				rh.setStatus(2);
				rentHouseMapper.updateByPrimaryKeySelective(rh);
			} catch (Exception e) {
				continue;
			}
		}
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println("true");
	}



}
