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

import com.zhanwkj.fx2.dao.CollectMapper;
import com.zhanwkj.fx2.model.Collect;
import com.zhanwkj.fx2.model.Fans;
import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.service.RentHouseService;
import com.zhanwkj.fx2.utils.HouseUtil;
import com.zhanwkj.fx2.utils.Query;

/**
 * 
 * @desc:收藏逻辑控制层
 * @author Chitry
 * @className:CollectController
 * @time:下午7:58:28
 */
@RequestMapping("Collect")
@Controller
public class CollectController {
	@Autowired
	RentHouseService rentHouseService;
	@Autowired
	CollectMapper collectMapper;

	@RequestMapping("addCollect")
	public void addCollect(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam("hid") Integer houseid) throws Exception {
		//收藏次数+1
		RentHouse r = this.rentHouseService.selectByPrimaryKey(houseid);
		if(r.getFid()==0){
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print(false);
		}
		r.setColnum(r.getColnum()+1);
		rentHouseService.updateByPrimaryKey(r);
		
		Fans fans = (Fans) session.getAttribute("user");
//		System.out.println("要收藏的房源id：" + houseid);
//		if (houseid == null) {
//			return "forward:/Error/error.jsp";// 异常处理
//		}
		Query query = new Query();
		query.setUid(fans.getId());
		query.setRid(houseid);
		int exist = this.collectMapper.selectByUidRentIs(query);
		/**
		 * 当前账户已经收藏过该房源
		 */
		if (exist > 0) {// 取出收藏列表
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print(true);
		}
		/**
		 * 当前账户尚未收藏该房源
		 */

		Collect newCollect = new Collect();
		newCollect.setRentid(houseid);
		newCollect.setUid(fans.getId());
		this.collectMapper.insert(newCollect);
		// 取出收藏列表
//		return "forward:/Collect/lookCollect.do";
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(true);
	}

	@RequestMapping("lookCollect")
	public String lookCollect(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		Fans fans = (Fans) session.getAttribute("user");

		List<Collect> myCollect = new ArrayList<Collect>();
		
		myCollect = this.collectMapper.myCollect(fans.getId());// 当前用户的收藏列表
		List<RentHouse> myCollectHouse = new ArrayList<RentHouse>();
		for (Collect c : myCollect) {// 取出房源信息
			myCollectHouse.add(this.rentHouseService.selectByPrimaryKey(c.getRentid()));
		}
		myCollectHouse = HouseUtil.setRentHouses(myCollectHouse);
		myCollectHouse = HouseUtil.setRentHousePic(myCollectHouse);
		session.setAttribute("myCollectHouse", myCollectHouse);
		return "forward:/Home/look/collect.jsp";
	}

	@RequestMapping("deleteCollect")
	public void deleteCollect(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam("str") String str) throws Exception {
		String ss[] = str.split("/");
		System.out.println(ss.length);
		for (int i = 0; i < ss.length; i++) {
			String s = ss[i];
			try {
				Fans f=(Fans) session.getAttribute("user");
				Integer fid=f.getId();
				collectMapper.deleteByunio(fid,Integer.valueOf(s));
			} catch (Exception e) {
				continue;
			}
		}
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println("true");
	}
}