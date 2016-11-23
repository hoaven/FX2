package com.zhanwkj.fx2.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zhanwkj.fx2.dao.CollectMapper;
import com.zhanwkj.fx2.dao.FansMapper;
import com.zhanwkj.fx2.dao.RentHouseMapper;
import com.zhanwkj.fx2.dao.SeeHouseMapper;
import com.zhanwkj.fx2.model.Manage;
import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.utils.HouseUtil;
import com.zhanwkj.fx2.utils.MD5Utils;
import com.zhanwkj.fx2.utils.Query;

import net.sf.json.JSONArray;

/**
 * 
 * @desc:随机推荐逻辑控制层
 * @author Chitry
 * @className:RecommendController
 * @time:下午7:58:28
 */
@RequestMapping("Recommend")
@Controller
public class RecommendController {

	@Autowired
	FansMapper fansMapper;
	@Autowired
	SeeHouseMapper seeHouseMapper;

	@Autowired
	RentHouseMapper rentHouseMapper;
	@Autowired
	CollectMapper collectMapper;

	@RequestMapping("/findrenthouse")
	public void findrenthouse(HttpServletRequest request,HttpServletResponse response,
			@RequestParam("type") Integer type) {
		try {
			List<RentHouse> lists = new ArrayList<RentHouse>();
			switch(type){
			case 1:
				lists = rentHouseMapper.RandfindRentHouseByType(type);
				break;
			case 2:
				lists = rentHouseMapper.RandfindRentHouseByType(type);
				break;
			case 3://房源推荐：按照类型随机推荐
				lists = rentHouseMapper.RandfindRentHouseByType(type);
				break;
			case 4://每日推荐：按照点击量推荐
				lists=rentHouseMapper.findAllBycknum();
				break;
			default:break;
			}
			lists = HouseUtil.setRentHouses(lists);
			lists = HouseUtil.setRentHousePic(lists);
			JSONArray json = JSONArray.fromObject(lists);
			response.setContentType("text/html;charset=UTF-8"); 
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("/findAllBycknum")
	public void findAllBycknum(HttpServletRequest request,HttpServletResponse response) {
		try {
			List<RentHouse> lists=rentHouseMapper.findAllBycknum();
			lists =  HouseUtil.setRentHouses(lists);
			lists = HouseUtil.setRentHousePic(lists);
			JSONArray json = JSONArray.fromObject(lists);
			response.setContentType("text/html;charset=UTF-8"); 
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
