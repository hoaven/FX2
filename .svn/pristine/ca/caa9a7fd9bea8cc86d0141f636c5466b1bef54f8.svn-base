package com.zhanwkj.fx2.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zhanwkj.fx2.constant.PayType;
import com.zhanwkj.fx2.model.Fans;
import com.zhanwkj.fx2.model.Fx2;
import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.service.RentHouseService;
import com.zhanwkj.fx2.utils.HouseUtil;
import com.zhanwkj.fx2.utils.Query;

/**
 * 
 * @desc:审核逻辑控制层
 * @author Chitry
 * @className:CheckController
 * @time:下午7:58:28
 */
@RequestMapping("Check")
@Controller
public class CheckController {
	@Autowired
	RentHouseService rentHouseService;
//	//找到所有需要审核的约看清单
//	@RequestMapping("findshrh")
//	public String housedetail(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
//
//		List<RentHouse> rhs= rentHouseService.findAll();
//		List<RentHouse> rs=new ArrayList<RentHouse>();
//		for(RentHouse rh:rhs){
//			if(rh.getFid()!=null&&"0".equals(rh.getStatus())){
//				rs.add(rh);
//			}
//		}
//		request.getSession().setAttribute("rs", rs);
//		return "forward:/Index/User/manage.jsp";
//	}

	/**
	 * 一键启动房源广播
	 * @author Chitry
	 * @description	数据变动：[renthouse房源表]1.isup=1 广播启动申请
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("FyReport")
	public void FyReport(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam("rid") Integer rid) throws IOException {
		RentHouse rr = this.rentHouseService.selectByPrimaryKey(rid);
		rr.setIsup(1);//申请启动广播
		response.getWriter().print(true);
	}

	/**
	 * 申请全程委托服务
	 * @author Chitry
	 * @description	数据变动：[renthouse房源表]1.allisup=1 	全程委托申请
	 * @param request
	 * @param response
	 * @param session
	 * @param rid
	 * @throws IOException
	 */
	@RequestMapping("FyTrus")
	public void FyTrus(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam("rid") Integer rid) throws IOException {
		RentHouse rr = this.rentHouseService.selectByPrimaryKey(rid);
		rr.setAllisup(1);//申请全程委托
		response.getWriter().print(true);
	}

	/**
	 * 蜂小二审核房源
	 * @author Chitry
	 * @description	转向：未审核未绑定房源信息浏览界面
	 * @param request
	 * @param response
	 * @param session
	 * @param rid
	 * @throws IOException
	 */
	@RequestMapping("doCheck")
	public String doCheck(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam("houseid") Integer houseid) throws IOException {
		Fx2 fx2 = new Fx2();
		fx2 = (Fx2) session.getAttribute("fx2");
		RentHouse rr = this.rentHouseService.selectByPrimaryKey(houseid);
		rr = HouseUtil.setRentHouse(rr);
		/**
		 * 焦点图配置
		 */
		List<String> url = new ArrayList<String>();
		for (String s : rr.getPicurl().split("-")) {
			url.add(s);
		}
		String[] equitment = rr.getEquitment().split("/");
		session.setAttribute("rrhouse", rr);
		session.setAttribute("rrurl", url);//此房源图片集合
		session.setAttribute("rrequitment", equitment);//此房源配套设施数组
		int type = rr.getType();
		switch(type){
		case 1:
			return "forward:/Home/fx2/housedetail.jsp";
		case 2:
			return "forward:/Home/fx2/bangondetail.jsp";
		case 3:
			return "forward:/Home/fx2/shangpudetail.jsp";
		default:break;
		}
		return null;
	}

	/**
	 * 蜂小二修改房源信息
	 * @author Chitry
	 * @description	转向：房源信息修改界面
	 * @param request
	 * @param response
	 * @param session
	 * @param houseid
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("updateCheck")
	public String updateCheck(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam("houseid") Integer houseid) throws IOException {
		RentHouse rr = this.rentHouseService.selectByPrimaryKey(houseid);
		rr = HouseUtil.setRentHouse(rr);
		/**
		 * 焦点图配置
		 */
		List<String> url = new ArrayList<String>();
		for (String s : rr.getPicurl().split("-")) {
			url.add(s);
		}
		String[] equitment = rr.getEquitment().split("/");
		session.setAttribute("rrhouse", rr);
		session.setAttribute("rrurl", url);//此房源图片集合
		session.setAttribute("rrequitment", equitment);//此房源配套设施数组

		return "forward:/Home/fx2/updatehouse.jsp";
	}

	/**
	 * 蜂小二修改房源
	 * @author Chitry
	 * @description	修改房源数据：传入房源数据	
	 * @param request
	 * @param response
	 * @param session
	 * @param houseid
	 * @return 
	 * @throws IOException
	 */
	@RequestMapping("doUpdateCheck")
	public String doUpdateCheck(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam("houseid") Integer houseid,@RequestParam("hid") Integer type) throws IOException {
		RentHouse renthouse = new RentHouse();
		Fans fans = (Fans) session.getAttribute("user");
		int i=0;
		int n=0;
		//住宅类
		if(type==1){
			String title  = request.getParameter("title");//小区名称
			String address  = request.getParameter("address");//小区地址
			Integer area  = Integer.parseInt( request.getParameter("area"));//建筑面积
			int di  = Integer.parseInt( request.getParameter("di"));//第几层
			int gong  =  Integer.parseInt(request.getParameter("gong"));//共几层
			String price  = request.getParameter("zujin");//租金
			int renovation  = Integer.parseInt(request.getParameter("zhuangxiu"));//装修情况
			String[] equitment  = request.getParameterValues("checkbox");//配套
			StringBuffer temp1 = new StringBuffer();
			String newStr = null;
			if(equitment!=null){
				for(n=1;n<=8;n++){
					int a = Integer.parseInt(equitment[i]);
					if(n==a){
						temp1.append("1/");

						if(i<equitment.length-1)
							i++;
					}else{
						temp1.append("0/");
					}
				}
				newStr = temp1.toString();  //转换成数据库的格式
			}else{
				newStr = "0/0/0/0/0/0/0/0/";  //转换成数据库的格式
			}

			int aparttype =Integer.parseInt(request.getParameter("aparttype"));//几室几厅
			String chicktime  = request.getParameter("check_in_date");//入住时间

			if(chicktime.equals("2")){
				String temp =request.getParameter("datadox");
				chicktime=temp;
			}
			String price_type  = request.getParameter("price_type");//支付方式  没有放进去  数据库不匹配
			String description  = request.getParameter("txazw");//描述
			String name  = request.getParameter("name");//姓名
			int sex  = Integer.parseInt(request.getParameter("sex"));//性别
			String tel  = request.getParameter("tel");//电话

			String tjpersonid  = request.getParameter("referee_truename");//推荐人
			String tjrtel  = request.getParameter("referee_truetel");//推荐人电话没有启用
			renthouse.setUid(fans.getId());
			renthouse.setType(1);
			renthouse.setTitle(title);
			renthouse.setAddress(address);
			renthouse.setArea(area);  
			renthouse.setPrice(price);
			renthouse.setArea(area);
			renthouse.setFloor(di);
			renthouse.setFloorcount(gong);
			renthouse.setAparttype(aparttype);
			renthouse.setRenovation(renovation);
			renthouse.setEquitment(newStr);
			renthouse.setChicktime(chicktime);
			renthouse.setDescription(description);
			renthouse.setName(name);
			renthouse.setSex(sex);
			renthouse.setPaytype(PayType.setmyPayType(price_type));
			renthouse.setTjpersonid(tjpersonid);
			renthouse.setPhone(tel);
			//设置局部默认值
			renthouse.setBgtype(1);
			renthouse.setRenttime("1");
			renthouse.setShenfen(1);
			renthouse.setShanpuwork("1");
			renthouse.setTransferfee("无");
			renthouse.setZxdate("1");
			renthouse.setSptype(1);
			
		}
		//办公类
		if(type==2){
			String title  = request.getParameter("title");//小区名称
			String address  = request.getParameter("address");
			int bangong_type=Integer.parseInt(request.getParameter("bangong_type"));//类型
			int renovation  = Integer.parseInt(request.getParameter("zhuangxiu_bangong"));//装修情况
			String price  = request.getParameter("zujin");//租金
			Integer area  = Integer.parseInt(request.getParameter("area"));//建筑面积
			String chicktime  = request.getParameter("check_in_date");//入住时间
			if(chicktime.equals("2")){
				String temp =request.getParameter("datadoy");
				chicktime=temp;
			}
			String zxdate  = request.getParameter("zxdate");//装修时间
			String description  = request.getParameter("txazw");//描述
			String name  = request.getParameter("name");//姓名
			int sex  = Integer.parseInt(request.getParameter("sex"));//性别
			String tel  = request.getParameter("tel");//电话
			int shenfen = 1;//业主身份
			String renttime =  request.getParameter("zhuqi");//租期
			String price_type  = request.getParameter("price_type");
			renthouse.setUid(fans.getId());
			renthouse.setType(2);
			renthouse.setTitle(title);
			renthouse.setAddress(address);
			renthouse.setPrice(price);
			renthouse.setRenovation(renovation);
			renthouse.setRenttime(renttime);
			renthouse.setBgtype(bangong_type);
			renthouse.setArea(area);
			renthouse.setChicktime(chicktime);
			renthouse.setZxdate(zxdate);
			renthouse.setDescription(description);
			renthouse.setName(name);
			renthouse.setSex(sex);
			renthouse.setPhone(tel);
			renthouse.setPaytype(PayType.setmyPayType(price_type));
			renthouse.setShenfen(shenfen);
			//设置局部默认值
			renthouse.setEquitment("0/0/0/0/0/0/0/0/");
			renthouse.setShanpuwork("1");
			renthouse.setTransferfee("无");
			renthouse.setSptype(1);
			renthouse.setAparttype(1);
		}
		//商铺类
		else{	
			String title  = request.getParameter("title");//小区名称
			String address  = request.getParameter("address");
			String qu  = request.getParameter("qu");
			String jd  = request.getParameter("jd");
			String juti  = request.getParameter("juti");
			address = address+qu+jd+juti;
			int shangpu_type=Integer.parseInt(request.getParameter("shangpu_type"));//类型
			int renovation  = Integer.parseInt(request.getParameter("zhuangxiu_shangpu"));//装修情况
			Integer area  = Integer.parseInt(request.getParameter("mianji"));//建筑面积
			String price  = request.getParameter("zujin");//租金
			String price_type  = request.getParameter("price_type");
			String chicktime  = request.getParameter("check_in_date");//入住时间
			if(chicktime.equals("2")){
				String temp =request.getParameter("datadoz");
				chicktime=temp;
			}
			String zxdate  = request.getParameter("zxdate");//装修时间
			String transferfee  = request.getParameter("transferfee");//转手费  有错
			String shanpuwork  = request.getParameter("shanpuwork");//转手费  有错
			String name  = request.getParameter("name");//姓名
			int sex  = Integer.parseInt(request.getParameter("sex"));//性别
			String tel  = request.getParameter("tel");//电话
			int shenfen = 1;//业主身份

			String renttime =  request.getParameter("zhuqi");//租期
			renthouse.setUid(fans.getId());
			renthouse.setType(3);
			renthouse.setTitle(title);
			renthouse.setAddress(address);
			renthouse.setRenttime(renttime);
			renthouse.setSptype(shangpu_type);
			renthouse.setRenovation(renovation);
			renthouse.setArea(area);
			renthouse.setPrice(price);
			renthouse.setChicktime(chicktime);
			renthouse.setZxdate(zxdate);
			renthouse.setTransferfee(transferfee);
			renthouse.setShanpuwork(shanpuwork);
			renthouse.setPaytype(PayType.setmyPayType(price_type));
			renthouse.setName(name);
			renthouse.setSex(sex);
			renthouse.setPhone(tel);
			renthouse.setShenfen(shenfen);
			//设置局部默认值
			renthouse.setBgtype(1);
			renthouse.setEquitment("0/0/0/0/0/0/0/0/");
			renthouse.setFloorcount(10);
			renthouse.setFloor(10);
			renthouse.setAparttype(1);
		}
		//默认值配置
		renthouse.setStatus(2);//默认不上架
		renthouse.setStudio(2);//默认审核未通过
		renthouse.setTrus(2);//默认不托管
		renthouse.setColnum(1);//默认收藏次数为1
		renthouse.setIsup(0);//默认不开启广播
		renthouse.setAllisup(0);//默认不全程委托
		renthouse.setFid(0);//默认未绑定蜂小二
		renthouse.setClicknum(1);//默认点击量为1
		renthouse.setTjpersonid("无推荐人");//默认无推荐人
		renthouse.setPicurl("/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg");//配置默认图片
		
		this.rentHouseService.updateByPrimaryKey(renthouse);
		request.setAttribute("houseid", houseid);
		return "forward:/Check/updateCheck.do";
	}


	/**
	 * 蜂小二完成审核控制类
	 * @author Chitry
	 * @description	数据变动：[renthouse房源表]1.fid=owner 绑定蜂小二	2.studio=1 审核通过	3.status=1 上架
	 * @param request
	 * @param response
	 * @param session
	 * @param houseid
	 * @throws IOException
	 */
	@RequestMapping("flinshCheck")
	public void flinshCheck(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam("houseid") Integer houseid) throws IOException {
		Fx2 fx2 = new Fx2();
		fx2 = (Fx2) session.getAttribute("fx2");
		//审核校验
		RentHouse r = this.rentHouseService.selectByPrimaryKey(houseid);
		if(r.getFid()!=0){//已经被绑定
			response.getWriter().print(false);
		}else{//开启绑定
			r.setFid(fx2.getId());//绑定当前蜂小二id
			r.setStudio(1);//审核通过
			r.setStatus(1);//审核通过立即上架
			this.rentHouseService.updateByPrimaryKey(r);
			response.getWriter().print(true);
		}
	}
}

