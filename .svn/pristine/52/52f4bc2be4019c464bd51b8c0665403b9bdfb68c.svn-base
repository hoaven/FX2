package com.zhanwkj.fx2.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zhanwkj.fx2.dao.CommentMapper;
import com.zhanwkj.fx2.dao.FansMapper;
import com.zhanwkj.fx2.dao.Fx2Mapper;
import com.zhanwkj.fx2.dao.RentHouseMapper;
import com.zhanwkj.fx2.dao.SeeHouseMapper;
import com.zhanwkj.fx2.model.Fans;
import com.zhanwkj.fx2.model.Fx2;
import com.zhanwkj.fx2.model.Pinglun;
import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.model.SeeHouse;
import com.zhanwkj.fx2.service.RentHouseService;
import com.zhanwkj.fx2.utils.HouseUtil;
import com.zhanwkj.fx2.utils.Query;

/**
 * 
 * @desc:蜂小二逻辑控制层
 * @author Chitry
 * @className:Fx2Controller
 * @time:下午7:58:28
 */
@RequestMapping("Fx2")
@Controller
public class Fx2Controller {
	@Autowired
	SeeHouseMapper seeHouseMapper;
	@Autowired
	Fx2Mapper fx2Mapper;
	@Autowired
	CommentMapper comMapper;
	@Autowired
	FansMapper fanMapper;
	@Autowired
	RentHouseMapper rentHouseMapper;
	@Autowired
	RentHouseService rentHouseService;
	
	/**
	 * 蜂小二登录入口
	 * @param request
	 * @param session
	 * @param response
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("Login")
	public void fx2(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws Exception{
		Fx2 fx2 = new Fx2();
		String name = new String(request.getParameter("username").getBytes(
		   "ISO-8859-1"), "UTF-8");
        String password = new String(request.getParameter("password").getBytes(
		   "ISO-8859-1"), "UTF-8");
		fx2 = this.fx2Mapper.selectByName(name);
		try {
			if (fx2 == null) {
				response.getWriter().write("usernotexist");
				response.getWriter().close();
			} else {
				String pass = fx2.getPassword();
				if (pass.equals(password)) {
					 session.setAttribute("fx2", fx2);
					 response.getWriter().write("ok");
					 response.getWriter().close();
				} else {
					response.getWriter().write("passworderror");
					response.getWriter().close();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("doLogin")
	public String doLogin(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws Exception{
		Fx2 fx2 = new Fx2();
		fx2 = (Fx2) session.getAttribute("fx2");
		return "forward:/Home/fx2/fx2menu.jsp";
	}
	
	/**
	 * 蜂小二：我的绑定
	 * @author Chitry
	 * @description	数据限制：[renthouse房源表]1.fid=owner 当前蜂小二id
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping("fx2Bind")
	public String fx2Bind(HttpServletRequest request,HttpSession session){
		Fx2 fx2 = new Fx2();
		fx2 = (Fx2) session.getAttribute("fx2");
		List<RentHouse> rrlist = new ArrayList<RentHouse>();
		rrlist = this.rentHouseService.findRentHouseByFX2Id(fx2.getId());
		rrlist = HouseUtil.setRentHouses(rrlist);
		rrlist = HouseUtil.setRentHousePic(rrlist);
		session.setAttribute("rrlist", rrlist);
		return "forward:/Home/fx2/fx2binded.jsp";
	}
	
	/**
	 * 蜂小二：审核大厅
	 * @author Chitry
	 * @description 数据限制：[renthouse房源表] 1.fid=0 未绑定	 2.studio=2 未审核通过
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping("fx2Check")
	public String fx2Check(HttpServletRequest request,HttpSession session){
		Fx2 fx2 = new Fx2();
		fx2 = (Fx2) session.getAttribute("fx2");
		Query query = new Query();
		query.setFid(0);
		query.setStudio(2);
		List<RentHouse> rrlist = new ArrayList<RentHouse>();
		rrlist = this.rentHouseMapper.selectQueryCheck(query);
		rrlist = HouseUtil.setRentHouses2(rrlist);
		rrlist = HouseUtil.setRentHousePic(rrlist);
		session.setAttribute("WSHHouse", rrlist);
		return "forward:/Home/fx2/fx2check.jsp";
	}
	
	/**
	 * 蜂小二：我的约看业务
	 * @author Chitry
	 * @description 数据限制：[seehouse约看表]1.fid=owner 当前蜂小二id		2.yytime=0 预约时间未设定
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping("LookYK")
	public String LookYK(HttpServletRequest request,HttpSession session){
		Fx2 fx2 = new Fx2();
		fx2 = (Fx2) session.getAttribute("fx2");
		Query query = new Query();
		query.setFid(fx2.getId());
		query.setYytime("0");//查出预约时间为空的约看列表
		List<SeeHouse> seelist = new ArrayList<SeeHouse>();
		seelist = this.seeHouseMapper.findByQuery(query);
		session.setAttribute("seelist", seelist);
		Map<Integer,RentHouse> seemap = new HashMap<Integer,RentHouse>();
		for(int i=0;i<seelist.size();i++){
			RentHouse rr = new RentHouse();
			rr = this.rentHouseService.selectByPrimaryKey(seelist.get(i).getRentid());
			rr = HouseUtil.setRentHouse(rr);
			rr = HouseUtil.setRentHousesimPic(rr);
			seemap.put(seelist.get(i).getId(),rr );
		}
		session.setAttribute("seemap", seemap);
		return "forward:/Home/fx2/fx2look.jsp";
		
	}
	
	/**
	 * 蜂小二约看业务：设定预约时间
	 * @author Chitry
	 * @description	数据变动：[seehouse约看表]yytime=set
	 * @param request
	 * @param session
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("DateSet")
	public void DateSet(HttpServletRequest request, HttpServletResponse response,HttpSession session,
			@RequestParam("seeid") Integer seeid,@RequestParam("date") String date) throws IOException{
		System.out.println("465464:"+date);
		SeeHouse see = new SeeHouse();
		see = this.seeHouseMapper.selectByPrimaryKey(seeid);
		see.setYytime(date);
		this.seeHouseMapper.updateByPrimaryKey(see);
		response.getWriter().print(true);
	}
	/**
	 * 蜂小二:解除绑定
	 * @param request
	 * @param response
	 * @param session
	 * @param hid
	 * @throws IOException
	 */
	@RequestMapping("JcBind")
	public void JcBind(HttpServletRequest request, HttpServletResponse response,HttpSession session,
			@RequestParam("hid") String hid) throws IOException{
		System.out.println("房屋id:"+hid);
		RentHouse rentHouse = new RentHouse();
		if(hid==null||hid.trim().equals("")){
			response.setContentType("text/html;charset=UTF-8"); 
			response.getWriter().println(false);
		}
		rentHouse = rentHouseService.selectByPrimaryKey(Integer.parseInt(hid));
		rentHouse.setFid(0);
		rentHouseService.updateByPrimaryKey(rentHouse);
		response.getWriter().print(true);
	}
	@RequestMapping("lookmyfx2")
	public String lookfx2list(HttpServletRequest request,HttpSession session){
		Fans user = (Fans) session.getAttribute("user");
		Query	query= new Query();
		query.setUid(user.getId());
		List<SeeHouse> allSeeHouse = seeHouseMapper.findByQuery(query);
		List<Fx2>	 fx2list = new ArrayList<Fx2>();
		 List<Integer>  li = new ArrayList<Integer>();
		for(SeeHouse s:allSeeHouse){
			li.add(s.getFx2id());
		}
		HashSet<Integer> hs = new HashSet<Integer>(li);
		for(Integer i :hs){
			Fx2 f = fx2Mapper.selectByPrimaryKey(i);
			fx2list.add(f);
		}
		session.setAttribute("fx2list", fx2list);
		return "Home/User/fx2list";
	}
	
	
	@RequestMapping("fx2msg")
	public String fx2msg(HttpServletRequest request,HttpSession session){
		String fid = request.getParameter("fid");
		Fx2  fx2msg = fx2Mapper.selectByPrimaryKey(Integer.parseInt(fid));
		Query	query= new Query();
		query.setFid(fx2msg.getId());
		List<SeeHouse> allSeeHouse = seeHouseMapper.findByQuery(query);
		List<Pinglun> pinglist = new ArrayList<Pinglun>();
		
		String []msg =null;
		for(int i=0;i<allSeeHouse.size();i++){
			System.out.println("约看s"+allSeeHouse.get(i).getId());
			msg =allSeeHouse.get(i).getComment().split("&");
			Pinglun p = new Pinglun();
			p.setName(msg[0]);
			p.setTime(msg[1]);
			p.setContent(msg[2]);
			System.out.println("p"+p.getName());
			pinglist.add(i, p);
		}
		for(Pinglun s:pinglist)
		{
			
			System.out.println(s.getName());
		}
		session.setAttribute("pinglist", pinglist);
		session.setAttribute("fx2msg", fx2msg);
	
		return "Home/user/myfx2";
	}
}
