package com.zhanwkj.fx2.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import com.zhanwkj.fx2.dao.SeeHouseMapper;
import com.zhanwkj.fx2.model.Fans;
import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.service.RentHouseService;
import com.zhanwkj.fx2.utils.HouseUtil;
import com.zhanwkj.fx2.utils.Query;

/**
 * 
 * @desc:房源逻辑控制层
 * @author Chitry
 * @className:HouseController
 * @time:下午7:58:28
 */
@RequestMapping("House")
@Controller
public class HouseController{

	@Autowired
	RentHouseService rentHouseService;
	@Autowired
	CollectMapper collectMapper;
	@Autowired
	SeeHouseMapper seeHouseMapper;

	@RequestMapping("housedetail")
	public String housedetail(HttpServletRequest request, HttpServletResponse response,
			HttpSession session, @RequestParam("id") Integer id){

		RentHouse r = this.rentHouseService.selectRenthouseOne(id);
		/**
		 * 流量+1
		 */
		r.setClicknum(r.getClicknum()+1);
		rentHouseService.updateByPrimaryKey(r);
		HouseUtil.setRentHouse(r);
		/**
		 * 焦点图配置
		 */
		List<String> url = new ArrayList<String>();
		System.out.println("图片"+r.getPicurl());
		for (String s : r.getPicurl().split("-")) {
			url.add(s);
			System.out.println(s);
		}
		String[] equitment = r.getEquitment().split("/");

		session.setAttribute("RH", r);//单个房源
		session.setAttribute("url", url);//此房源图片集合
		session.setAttribute("equitment", equitment);//此房源配套设施数组

		/**
		 * 当前用户是否已经收藏该房源信息
		 */
		Fans fans = (Fans)session.getAttribute("user");
		Query query = new Query();
		query.setUid(fans.getId());
		query.setRid(id);
		int co = this.collectMapper.selectByUidRentIs(query);
		int iscollect = 0;
		if (co > 0)  iscollect = 1;
		session.setAttribute("iscollect", Integer.valueOf(iscollect));
		/**
		 * 当前用户是否已经约看该房源
		 */
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


	@RequestMapping("houseHome")
	public String houseHome(HttpServletRequest request, HttpServletResponse response,
			HttpSession session, @RequestParam("utype") Integer utype){
		System.out.println("fgaugfauib");
		List<RentHouse> House = new ArrayList<RentHouse>();
		Query query = new Query();
		
		if(utype==1){//来源于蜂小二个人中心
			query.setFid(0);//所有未曾绑定
			query.setStudio(2);//所有未审核
			System.out.println("98989898");
			House = this.rentHouseService.findAll();
			System.out.println("FindALL:"+House.get(0).getTitle());
			session.setAttribute("WSHHouse", House);
		}else if(utype==2){//来源于管理员个人中心
		
			query.setStudio(Integer.valueOf(0));
			House = this.rentHouseService.selectQuery(query);
			session.setAttribute("WSHHouse", House);
		}
		return "forward:/Home/fx2/househome.jsp";
	}

}
