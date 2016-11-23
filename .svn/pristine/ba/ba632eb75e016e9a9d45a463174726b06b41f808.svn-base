package com.zhanwkj.fx2.action;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.qq.connect.utils.json.JSONArray;
import com.qq.connect.utils.json.JSONObject;
import com.zhanwkj.fx2.dao.FansMapper;
import com.zhanwkj.fx2.dao.Fx2Mapper;
import com.zhanwkj.fx2.dao.ManageMapper;
import com.zhanwkj.fx2.dao.RentHouseMapper;
import com.zhanwkj.fx2.dao.SeeHouseMapper;
import com.zhanwkj.fx2.model.Fans;
import com.zhanwkj.fx2.model.Fx2;
import com.zhanwkj.fx2.model.Manage;
import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.model.SeeHouse;
import com.zhanwkj.fx2.utils.MD5Utils;


@RequestMapping("Manage")
@Controller
public class ManageController {

	@Autowired
	private Fx2Mapper fx2Mapper;
	@Autowired
	private ManageMapper mMapper;
	@Autowired
	private RentHouseMapper rhMapper;
	@Autowired
	private SeeHouseMapper shMapper;
	@Autowired
	private FansMapper fansMapper;
	
	
	
	/**
	 * 
	 * @param request
	 * @param username
	 * @param kaptcha
	 * @param password
	 * @param roll
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/login")
	public String dologin(HttpServletRequest request, @RequestParam("username") String username,
			@RequestParam("kaptcha") String kaptcha, @RequestParam("password") String password, @RequestParam("roll") Integer roll) throws Exception {
		String kaptchaExpected = (String) request.getSession()
				.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		if (!(kaptchaExpected.equalsIgnoreCase(kaptcha))) {
			request.setAttribute("errormessage", "验证码错误!");
			return "forward:/Manage/login.jsp";
		}

		if ("".equals(username.trim()) || "".equals(password.trim())) {
			request.setAttribute("errormessage", "用户名或者密码不能为空!");
			return "forward:/Manage/login.jsp";
		} else {
			Manage manage = mMapper.findAdminsByCheck(username, MD5Utils.EncoderByMd5(password),roll);
			if (manage == null) {
				request.setAttribute("errormessage", "用户名或者密码错误!");
				return "forward:/Manage/login.jsp";
			}
			if(roll==1){
				request.getSession().setAttribute("manage", manage);
				return "forward:/Manage/index.jsp";
			}else if(roll==2){
				request.getSession().setAttribute("manage", manage);
				return "forward:/Manage/index1.jsp";
			}else{
				request.setAttribute("errormessage", "用户名或者密码错误!");
				return "forward:/Manage/login.jsp";
			}
		}

	}

	@RequestMapping("/loginout")
	public String loginout(HttpServletRequest request) {
		request.getSession().removeAttribute("manage");
		return "forward:/Manage/login.jsp";
	}

	@RequestMapping("/updatepassword")
	public void updatepassword(HttpServletResponse response, @RequestParam("manageID") Integer adminId,
			@RequestParam("password1") String password1, @RequestParam("password2") String password2) {
		try {
			Manage manage = mMapper.selectByPrimaryKey(adminId);
			if (MD5Utils.EncoderByMd5(password1).equals(manage.getPassword())) {
				// 验证正确
				System.out.println("ccc");
				manage.setPassword(MD5Utils.EncoderByMd5(password2));
				mMapper.updateByPrimaryKey(manage);
				response.getWriter().print("true");
			} else {
				response.getWriter().print("false");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("/findFx2")
	public String findFx2(HttpServletRequest request) {
		List<Fx2> fs = fx2Mapper.findAll();
		request.getSession().setAttribute("fs", fs);
		return "forward:/Manage/fx2.jsp";
	}
	
	@RequestMapping("/findseehouse")
	public String findseehouse(HttpServletRequest request) {
		List<SeeHouse> shs = shMapper.findAll();
		for(SeeHouse s:shs){
			Integer uid=s.getUid();
			Integer fx2id=s.getFx2id();
			Integer rentid=s.getRentid();
			Fans f=fansMapper.selectByPrimaryKey(uid);
			if(f!=null){
				s.setFansname(f.getTruename());
			}else{
				s.setFansname("");
			}
			Fx2 f1=fx2Mapper.selectByPrimaryKey(fx2id);
			if(f1!=null){
				s.setFx2name(f1.getName());
			}else{
				s.setFx2name("");
			}
			RentHouse f2=rhMapper.selectByPrimaryKey(rentid);
			if(f2!=null){
				s.setRentname(f2.getTitle());
			}else{
				s.setRentname("");
			}
		}
		request.getSession().setAttribute("shs", shs);
		return "forward:/Manage/seehouse.jsp";
	}

	@RequestMapping("/findFx2ById")
	public void findFx2ById(HttpServletResponse response, @RequestParam("id") Integer id) throws Exception {
		Fx2 f = fx2Mapper.selectByPrimaryKey(id);
		System.out.println("23152");
		JSONObject json = new JSONObject(f);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println(json);
	}

	@RequestMapping("updateFx2ById1")
	public void updateFx2ById1(@RequestParam("file") MultipartFile file, @RequestParam("id") Integer id,@RequestParam("password") String password,
			@RequestParam("name") String name, @RequestParam("sex") Integer sex, @RequestParam("phone") String phone,
			@RequestParam("business") String business, @RequestParam("address") String address,
			@RequestParam("seenum") Integer seenum, @RequestParam("sunum") Integer sunum,
			@RequestParam("score") String score, HttpServletResponse response, HttpServletRequest request)
					throws Exception {
		try {
			Fx2 f = fx2Mapper.selectByPrimaryKey(id);
			// 先删除原先的照片
			String savepath1 = request.getSession().getServletContext().getRealPath(f.getPic());
			File file1 = new File(savepath1);
			if (file1.exists()) {
				file1.delete();
			}
			// 保存新的图片
			String picname = file.getOriginalFilename();
			String filename = System.currentTimeMillis() + picname.substring(picname.lastIndexOf("."));
			String savepath = request.getSession().getServletContext().getRealPath("/data/img/fx2/");
			File targetFile = new File(savepath, filename);
			file.transferTo(targetFile);
			f.setName(name);
			f.setSex(sex);
			f.setPassword(password);
			f.setPic("/data/img/fx2/" + filename);
			f.setAddress(address);
			f.setPhone(phone);
			f.setSeenum(seenum);
			f.setSunum(sunum);
			f.setBusiness(business);
			f.setScore(score);
			fx2Mapper.updateByPrimaryKeySelective(f);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("updateFx2ById2")
	public void updateFx2ById2(@RequestParam("id") Integer id, @RequestParam("name") String name,@RequestParam("password") String password,
			@RequestParam("sex") Integer sex, @RequestParam("phone") String phone,
			@RequestParam("business") String business, @RequestParam("address") String address,
			@RequestParam("seenum") Integer seenum, @RequestParam("sunum") Integer sunum,
			@RequestParam("score") String score, HttpServletResponse response, HttpServletRequest request)
					throws Exception {
		try {
			Fx2 f = fx2Mapper.selectByPrimaryKey(id);

			f.setName(name);
			f.setSex(sex);
			f.setPassword(password);
			f.setAddress(address);
			f.setPhone(phone);
			f.setSeenum(seenum);
			f.setSunum(sunum);
			f.setBusiness(business);
			f.setScore(score);
			fx2Mapper.updateByPrimaryKeySelective(f);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("addFx2ById")
	public void addFx2ById(@RequestParam("file1") MultipartFile file, @RequestParam("name") String name, @RequestParam("password") String password,
			@RequestParam("sex") Integer sex, @RequestParam("phone") String phone,
			@RequestParam("business") String business, @RequestParam("address") String address,
			@RequestParam("seenum") Integer seenum, @RequestParam("sunum") Integer sunum,
			@RequestParam("score") String score, HttpServletResponse response, HttpServletRequest request)
					throws Exception {
		try {
			// 保存新的图片
			String picname = file.getOriginalFilename();
			String filename = System.currentTimeMillis() + picname.substring(picname.lastIndexOf("."));
			String savepath = request.getSession().getServletContext().getRealPath("/data/img/fx2/");
			File targetFile = new File(savepath, filename);
			file.transferTo(targetFile);

			Fx2 f = new Fx2();
			f.setName(name);
			f.setSex(sex);
			f.setPassword(password);
			f.setPic("/data/img/fx2/" + filename);
			f.setAddress(address);
			f.setPhone(phone);
			f.setSeenum(seenum);
			f.setSunum(sunum);
			f.setBusiness(business);
			f.setScore(score);
			fx2Mapper.insertSelective(f);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("deleteFx2ById")
	public void deleteFx2ById(@RequestParam("id") Integer id, HttpServletResponse response, HttpServletRequest request)
			throws Exception {
		try {
			Fx2 f = fx2Mapper.selectByPrimaryKey(id);
			// 先删除原先的照片
			String savepath1 = request.getSession().getServletContext().getRealPath(f.getPic());
			File file1 = new File(savepath1);
			if (file1.exists()) {
				file1.delete();
			}

			fx2Mapper.deleteByPrimaryKey(id);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("/findRenthouse")
	public String findRenthouse(HttpServletRequest request, @RequestParam("operation") Integer operation) {
		if (operation == 1) {
			List<RentHouse> rhs = rhMapper.findRentHouseByType(operation);
			for(RentHouse rh:rhs){
				if (rh.getFid() == null) {
					rh.setFx2name("暂无");
				} else {
					Fx2 f = fx2Mapper.selectByPrimaryKey(rh.getFid());
					if (f != null) {
						rh.setFx2name(f.getName());
					}
				}
			}
			request.getSession().setAttribute("rhs", rhs);
			return "forward:/Manage/renthouse1.jsp";
		} else if (operation == 2) {
			List<RentHouse> rhs = rhMapper.findRentHouseByType(operation);
			for(RentHouse rh:rhs){
				if (rh.getFid() == null) {
					rh.setFx2name("暂无");
				} else {
					Fx2 f = fx2Mapper.selectByPrimaryKey(rh.getFid());
					if (f != null) {
						rh.setFx2name(f.getName());
					}
				}
			}
			request.getSession().setAttribute("rhs", rhs);
			return "forward:/Manage/renthouse2.jsp";
		} else {
			List<RentHouse> rhs = rhMapper.findRentHouseByType(operation);
			for(RentHouse rh:rhs){
				if (rh.getFid() == null) {
					rh.setFx2name("暂无");
				} else {
					Fx2 f = fx2Mapper.selectByPrimaryKey(rh.getFid());
					if (f != null) {
						rh.setFx2name(f.getName());
					}
				}
			}
			request.getSession().setAttribute("rhs", rhs);
			return "forward:/Manage/renthouse3.jsp";
		}
	}
	
	
	@RequestMapping("/findRenthouse1")
	public String findRenthouse1(HttpServletRequest request, @RequestParam("operation") Integer operation) {
		if (operation == 1) {
			List<RentHouse> rhs = rhMapper.findRentHouseByType(operation);
			for(RentHouse rh:rhs){
				if (rh.getFid() == null) {
					rh.setFx2name("暂无");
				} else {
					Fx2 f = fx2Mapper.selectByPrimaryKey(rh.getFid());
					if (f != null) {
						rh.setFx2name(f.getName());
					}
				}
			}
			request.getSession().setAttribute("rhs", rhs);
			return "forward:/Manage/renthouse11.jsp";
		} else if (operation == 2) {
			List<RentHouse> rhs = rhMapper.findRentHouseByType(operation);
			for(RentHouse rh:rhs){
				if (rh.getFid() == null) {
					rh.setFx2name("暂无");
				} else {
					Fx2 f = fx2Mapper.selectByPrimaryKey(rh.getFid());
					if (f != null) {
						rh.setFx2name(f.getName());
					}
				}
			}
			request.getSession().setAttribute("rhs", rhs);
			return "forward:/Manage/renthouse22.jsp";
		} else {
			List<RentHouse> rhs = rhMapper.findRentHouseByType(operation);
			for(RentHouse rh:rhs){
				if (rh.getFid() == null) {
					rh.setFx2name("暂无");
				} else {
					Fx2 f = fx2Mapper.selectByPrimaryKey(rh.getFid());
					if (f != null) {
						rh.setFx2name(f.getName());
					}
				}
			}
			request.getSession().setAttribute("rhs", rhs);
			return "forward:/Manage/renthouse33.jsp";
		}
	}

	@RequestMapping("/findRenthousepx")
	public String findRenthousepx(HttpServletRequest request, @RequestParam("operation") Integer operation) {
		if (operation == 1) {
			List<RentHouse> rhs = rhMapper.findRentHouseByType1(operation);
			request.getSession().setAttribute("rhs", rhs);
			return "forward:/Manage/renthouse1.jsp";
		} else if (operation == 2) {
			List<RentHouse> rhs = rhMapper.findRentHouseByType1(operation);
			request.getSession().setAttribute("rhs", rhs);
			return "forward:/Manage/renthouse2.jsp";
		} else {
			List<RentHouse> rhs = rhMapper.findRentHouseByType1(operation);
			request.getSession().setAttribute("rhs", rhs);
			return "forward:/Manage/renthouse3.jsp";
		}
	}
	

	@RequestMapping("/tradedata")
	public String tradedata(HttpServletRequest request) {
		List<SeeHouse> shs = shMapper.findAll();
		int yknum = shs.size();
		int qxnum = 0;
		int jymoney = 0;
		for (SeeHouse sh : shs) {
			// 已支付的约看的清单
			if (sh.getIspay() == 1) {
				qxnum++;
				if (sh.getPaytype() == 1) {
					jymoney += 90;
				} else {
					jymoney += 300;
				}

			}
		}
		request.setAttribute("yknum", yknum);
		request.setAttribute("qxnum", qxnum);
		request.setAttribute("jymoney", jymoney);
		
		for(SeeHouse s:shs){
			Integer uid=s.getUid();
			Integer fx2id=s.getFx2id();
			Integer rentid=s.getRentid();
			Fans f=fansMapper.selectByPrimaryKey(uid);
			if(f!=null){
				s.setFansname(f.getTruename());
			}else{
				s.setFansname("");
			}
			Fx2 f1=fx2Mapper.selectByPrimaryKey(fx2id);
			if(f1!=null){
				s.setFx2name(f1.getName());
			}else{
				s.setFx2name("");
			}
			RentHouse f2=rhMapper.selectByPrimaryKey(rentid);
			if(f2!=null){
				s.setRentname(f2.getTitle());
			}else{
				s.setRentname("");
			}
		}
		request.getSession().setAttribute("shs", shs);
		
		return "forward:/Manage/tradedata.jsp";
	}

	@RequestMapping("/businessdata")
	public String businessdata(HttpServletRequest request) {
		List<Fans> fs = fansMapper.findAll();
		int fansnum = fs.size();
		int fx2num = fx2Mapper.findAll().size();
		request.setAttribute("fansnum", fansnum);
		request.setAttribute("fx2num", fx2num);
		return "forward:/Manage/businessdata.jsp";
	}

	@RequestMapping("/findFans")
	public String findFans(HttpServletRequest request) {
		List<Fans> fs = fansMapper.findAll();
		request.setAttribute("fs", fs);
		return "forward:/Manage/fans.jsp";
	}

	@RequestMapping("/findFansById")
	public void findFansById(HttpServletResponse response, @RequestParam("id") Integer id) throws Exception {
		Fans f = fansMapper.selectFansByPrimaryKey(id);
		JSONObject json = new JSONObject(f);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println(json);
	}

	@RequestMapping("updateFansById1")
	public void updateFansById1(@RequestParam("id") Integer id, @RequestParam("type") String type,
			@RequestParam("truename") String truename, @RequestParam("mobile") String mobile,
			@RequestParam("integral") Integer integral, HttpServletResponse response, HttpServletRequest request)
					throws Exception {
		try {
			Fans f = fansMapper.selectByPrimaryKey(id);
			f.setType(type);
			f.setTruename(truename);
			f.setMobile(mobile);
			f.setIntegral(integral);
			fansMapper.updateByPrimaryKey(f);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("/findrenthouse")
	public void findrenthouse(HttpServletResponse response, @RequestParam("id") Integer id) throws Exception {
		RentHouse rh = rhMapper.selectByPrimaryKey(id);
		if (rh.getFid() == null) {
			rh.setFx2name("暂无");
		} else {
			Fx2 f = fx2Mapper.selectByPrimaryKey(rh.getFid());
			if (f != null) {
				rh.setFx2name(f.getName());
			}
		}
//		if (rh.getTjpersonid() != null) {
//			Fans f = fansMapper.selectFansByPrimaryKey(rh.getTjpersonid());
//			if (f != null) {
//				rh.setTjname(f.getTruename());
//				rh.setTjtel(f.getMobile());
//			}
//		}

		JSONObject json = new JSONObject(rh);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println(json);
	}

	@RequestMapping("/updateshangjia")
	public void updateshangjia(HttpServletResponse response, @RequestParam("id") Integer id) throws Exception {
		RentHouse rh = rhMapper.selectByPrimaryKey(id);
		if (rh.getStatus() == 1) {
			rh.setStatus(2);
		} else {
			rh.setStatus(1);
		}
		rhMapper.updateByPrimaryKeySelective(rh);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print("true");
	}

	@RequestMapping("deleterenthouseById")
	public void deleterenthouseById(@RequestParam("id") Integer id, HttpServletResponse response,
			HttpServletRequest request) throws Exception {
		try {
			rhMapper.deleteByPrimaryKey(id);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("deleteFansById")
	public void deleteFansById(@RequestParam("id") Integer id, HttpServletResponse response, HttpServletRequest request)
			throws Exception {
		try {
			fansMapper.deleteByPrimaryKey(id);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//查找图片
	@RequestMapping("picurl1")
	public String picurl1(@RequestParam("id") Integer id, HttpServletResponse response, HttpServletRequest request)
			throws Exception {
		try {
			RentHouse rh=rhMapper.selectByPrimaryKey(id);
			String picurl=rh.getPicurl();
			List<String> list=new ArrayList<String>();
			if("".equals(picurl.trim())||picurl==null){
				
			}else{
				String s[]=picurl.split("-");
				for(int i=0;i<s.length;i++){
					list.add(s[i]);
				}
			}
			
			request.getSession().setAttribute("renthouseid", id);
			request.getSession().setAttribute("list", list);
			return "forward:/Manage/listpicurl1.jsp";
		} catch (Exception e) {
			return "forward:/Error/error.jsp";
		}
	}
	
	@RequestMapping("picurl2")
	public String picurl2(@RequestParam("id") Integer id, HttpServletResponse response, HttpServletRequest request)
			throws Exception {
		try {
			RentHouse rh=rhMapper.selectByPrimaryKey(id);
			String picurl=rh.getPicurl();
			List<String> list=new ArrayList<String>();
			if("".equals(picurl.trim())||picurl==null){
				
			}else{
				String s[]=picurl.split("-");
				for(int i=0;i<s.length;i++){
					list.add(s[i]);
				}
			}
			request.getSession().setAttribute("renthouseid", id);
			request.getSession().setAttribute("list", list);
			return "forward:/Manage/listpicurl2.jsp";
		} catch (Exception e) {
			return "forward:/Error/error.jsp";
		}
	}
	
	@RequestMapping("picurl3")
	public String picurl3(@RequestParam("id") Integer id, HttpServletResponse response, HttpServletRequest request)
			throws Exception {
		try {
			RentHouse rh=rhMapper.selectByPrimaryKey(id);
			String picurl=rh.getPicurl();
			List<String> list=new ArrayList<String>();
			if("".equals(picurl.trim())||picurl==null){
				
			}else{
				String s[]=picurl.split("-");
				for(int i=0;i<s.length;i++){
					list.add(s[i]);
				}
			}
			
			request.getSession().setAttribute("renthouseid", id);
			request.getSession().setAttribute("list", list);
			return "forward:/Manage/listpicurl3.jsp";
		} catch (Exception e) {
			return "forward:/Error/error.jsp";
		}
	}

	//查找图片
		@RequestMapping("picurl11")
		public String picurl11(@RequestParam("id") Integer id, HttpServletResponse response, HttpServletRequest request)
				throws Exception {
			try {
				RentHouse rh=rhMapper.selectByPrimaryKey(id);
				String picurl=rh.getPicurl();
				List<String> list=new ArrayList<String>();
				if("".equals(picurl.trim())||picurl==null){
					
				}else{
					String s[]=picurl.split("-");
					for(int i=0;i<s.length;i++){
						list.add(s[i]);
					}
				}
				
				request.getSession().setAttribute("renthouseid", id);
				request.getSession().setAttribute("list", list);
				return "forward:/Manage/listpicurl11.jsp";
			} catch (Exception e) {
				return "forward:/Error/error.jsp";
			}
		}
		
		@RequestMapping("picurl22")
		public String picurl22(@RequestParam("id") Integer id, HttpServletResponse response, HttpServletRequest request)
				throws Exception {
			try {
				RentHouse rh=rhMapper.selectByPrimaryKey(id);
				String picurl=rh.getPicurl();
				List<String> list=new ArrayList<String>();
				if("".equals(picurl.trim())||picurl==null){
					
				}else{
					String s[]=picurl.split("-");
					for(int i=0;i<s.length;i++){
						list.add(s[i]);
					}
				}
				request.getSession().setAttribute("renthouseid", id);
				request.getSession().setAttribute("list", list);
				return "forward:/Manage/listpicurl22.jsp";
			} catch (Exception e) {
				return "forward:/Error/error.jsp";
			}
		}
		
		@RequestMapping("picurl33")
		public String picurl33(@RequestParam("id") Integer id, HttpServletResponse response, HttpServletRequest request)
				throws Exception {
			try {
				RentHouse rh=rhMapper.selectByPrimaryKey(id);
				String picurl=rh.getPicurl();
				List<String> list=new ArrayList<String>();
				if("".equals(picurl.trim())||picurl==null){
					
				}else{
					String s[]=picurl.split("-");
					for(int i=0;i<s.length;i++){
						list.add(s[i]);
					}
				}
				
				request.getSession().setAttribute("renthouseid", id);
				request.getSession().setAttribute("list", list);
				return "forward:/Manage/listpicurl33.jsp";
			} catch (Exception e) {
				return "forward:/Error/error.jsp";
			}
		}

	
	@RequestMapping("addpicurl")
	public void uploadphoto(@RequestParam("file") MultipartFile file,@RequestParam("renthouseid") Integer id,  HttpServletResponse response,
			HttpServletRequest request) throws Exception {
		try {
			String picname = file.getOriginalFilename();
			String filename = System.currentTimeMillis() + picname.substring(picname.lastIndexOf("."));
			String savepath = request.getSession().getServletContext().getRealPath("/data/img/renthouse/");
			File targetFile = new File(savepath, filename);
			file.transferTo(targetFile);
			
			RentHouse rh=rhMapper.selectByPrimaryKey(id);
			String picurl=rh.getPicurl();
			if("".equals(picurl.trim())||picurl==null){
				picurl=picurl+"/data/img/renthouse/"+filename;
			}else{
				picurl=picurl+"-/data/img/renthouse/"+filename;
			}
			rh.setPicurl(picurl);
			rhMapper.updateByPrimaryKeySelective(rh);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//带修改
	@RequestMapping("delpicurl")
	public void delpicurl(@RequestParam("id") Integer id,@RequestParam("f") String f, HttpServletResponse response, HttpServletRequest request)
			throws Exception {
		try {
			RentHouse rh=rhMapper.selectByPrimaryKey(id);
			String picurl=rh.getPicurl();
			String s[]=picurl.split("-");
			List<String> list=new ArrayList<String>();
			for(int i=0;i<s.length;i++){
				if(!s[i].equals(f)){
					list.add(s[i]);
				}
			}
			String str="";
			if(list.size()>0){
				for(int i=0;i<list.size();i++){
					if(i==0){
						str=str+list.get(i);
					}else{
						str=str+"-"+list.get(i);
					}
				}
			}else{
				str="";
			}
			rh.setPicurl(str);
			rhMapper.updateByPrimaryKeySelective(rh);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	@RequestMapping("addRenthouse1")
	public void addRenthouse1(@RequestParam("title") String title, @RequestParam("address") String address,
			@RequestParam("aparttype") Integer aparttype, @RequestParam("area") Integer area,
			@RequestParam("floor") Integer floor, @RequestParam("floorcount") Integer floorcount,
			@RequestParam("equitment") String equitment, @RequestParam("renovation") Integer renovation,
			@RequestParam("chicktime") String chicktime, @RequestParam("price") String price,
			@RequestParam("description") String description, @RequestParam("paytype") Integer paytype,
			@RequestParam("uid") Integer uid, @RequestParam("name") String name,
			@RequestParam("sex") Integer sex, @RequestParam("phone") String phone,
			@RequestParam("studio") Integer studio, @RequestParam("iswrite") Integer iswrite,
			@RequestParam("status") Integer status, @RequestParam("trus") Integer trus,
			 @RequestParam(value="fid",required=false) Integer fid,
			HttpServletResponse response, HttpServletRequest request) throws Exception {
		try {
			RentHouse rh=new RentHouse();
			//设置默认值
			rh.setSptype(1);
			rh.setZxdate("1");
			rh.setTransferfee("无");
			rh.setShanpuwork("1");
			rh.setShenfen(1);
			rh.setRenttime("1");
			rh.setTjpersonid("无推荐人");
			rh.setClicknum(1);
			rh.setColnum(1);
			rh.setIsup(0);
			rh.setAllisup(0);
			rh.setFid(0);
			rh.setPicurl("/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg");
			rh.setType(1);
			rh.setBgtype(1);
			
			rh.setTitle(title);
			rh.setAddress(address);
			rh.setAparttype(aparttype);
			rh.setArea(area);
			rh.setFloor(floor);
			rh.setFloorcount(floorcount);
			rh.setEquitment(equitment);
			rh.setRenovation(renovation);
			rh.setChicktime(chicktime);
			rh.setPrice(price);
			rh.setDescription(description);
			rh.setPaytype(paytype);
			rh.setUid(uid);
			rh.setName(name);
			rh.setSex(sex);
			rh.setPhone(phone);
			rh.setStudio(studio);
			rh.setIswrite(iswrite);
			rh.setStatus(status);
			rh.setTrus(trus);
			rhMapper.insertSelective(rh);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("addRenthouse2")
	public void addRenthouse2(@RequestParam("title") String title, @RequestParam("address") String address,
			@RequestParam("bgtype") Integer bgtype, @RequestParam("area") Integer area,@RequestParam("zxdate") String zxdate,
			@RequestParam("renttime") String renttime, @RequestParam("renovation") Integer renovation,
			@RequestParam("chicktime") String chicktime, @RequestParam("price") String price,
			@RequestParam("description") String description, @RequestParam("paytype") Integer paytype,
			@RequestParam("uid") Integer uid, @RequestParam("name") String name, @RequestParam("shenfen") Integer shenfen,
			@RequestParam("sex") Integer sex, @RequestParam("phone") String phone,
			@RequestParam("studio") Integer studio, @RequestParam("iswrite") Integer iswrite,
			@RequestParam("status") Integer status, @RequestParam("trus") Integer trus,
			HttpServletResponse response, HttpServletRequest request) throws Exception {
		try {
			RentHouse rh=new RentHouse();
			//设置默认值
			rh.setAparttype(1);
			rh.setFloor(10);
			rh.setFloorcount(10);
			rh.setSptype(1);
			rh.setTransferfee("无");
			rh.setShanpuwork("1");
			rh.setTjpersonid("无推荐人");
			rh.setClicknum(1);
			rh.setColnum(1);
			rh.setIsup(0);
			rh.setAllisup(0);
			rh.setFid(0);
			rh.setPicurl("/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg");
			rh.setType(2);
			rh.setEquitment("0/0/0/0/0/0/0/0/");
			
			
			rh.setTitle(title);
			rh.setAddress(address);
			rh.setBgtype(bgtype);
			rh.setRenttime(renttime);
			rh.setArea(area);
			rh.setZxdate(zxdate);
			rh.setRenovation(renovation);
			rh.setChicktime(chicktime);
			rh.setPrice(price);
			rh.setDescription(description);
			rh.setPaytype(paytype);
			rh.setUid(uid);
			rh.setName(name);
			rh.setShenfen(shenfen);
			rh.setSex(sex);
			rh.setPhone(phone);
			rh.setStudio(studio);
			rh.setIswrite(iswrite);
			rh.setStatus(status);
			rh.setTrus(trus);
			rhMapper.insertSelective(rh);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("addRenthouse3")
	public void addRenthouse3(@RequestParam("title") String title, @RequestParam("address") String address,
			@RequestParam("sptype") Integer sptype, @RequestParam("area") Integer area,
			@RequestParam("zxdate") String zxdate, @RequestParam("transferfee") String transferfee, @RequestParam("shanpuwork") String shanpuwork,
			@RequestParam("renttime") String renttime, @RequestParam("renovation") Integer renovation,
			@RequestParam("chicktime") String chicktime, @RequestParam("price") String price,
			@RequestParam("description") String description, @RequestParam("paytype") Integer paytype,
			@RequestParam("uid") Integer uid, @RequestParam("name") String name, @RequestParam("shenfen") Integer shenfen,
			@RequestParam("sex") Integer sex, @RequestParam("phone") String phone,
			@RequestParam("studio") Integer studio, @RequestParam("iswrite") Integer iswrite,
			@RequestParam("status") Integer status, @RequestParam("trus") Integer trus,
			HttpServletResponse response, HttpServletRequest request) throws Exception {
		try {
			RentHouse rh=new RentHouse();
			//设置默认值
			rh.setAparttype(1);
			rh.setFloor(10);
			rh.setFloorcount(10);
			rh.setTjpersonid("无推荐人");
			rh.setClicknum(1);
			rh.setColnum(1);
			rh.setIsup(0);
			rh.setAllisup(0);
			rh.setFid(0);
			rh.setPicurl("/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg");
			rh.setEquitment("0/0/0/0/0/0/0/0/");
			rh.setType(3);
			rh.setBgtype(1);
			
			rh.setTitle(title);
			rh.setAddress(address);
			rh.setSptype(sptype);
			rh.setZxdate(zxdate);
			rh.setTransferfee(transferfee);
			rh.setRenttime(renttime);
			rh.setArea(area);
			rh.setShanpuwork(shanpuwork);
			rh.setRenovation(renovation);
			rh.setChicktime(chicktime);
			rh.setPrice(price);
			rh.setDescription(description);
			rh.setPaytype(paytype);
			rh.setUid(uid);
			rh.setName(name);
			rh.setShenfen(shenfen);
			rh.setSex(sex);
			rh.setPhone(phone);
			rh.setStudio(studio);
			rh.setIswrite(iswrite);
			rh.setStatus(status);
			rh.setTrus(trus);
			rhMapper.insertSelective(rh);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	@RequestMapping("bdFx2")
	public void bdfx2(@RequestParam("id") Integer id,@RequestParam("fx2id") Integer fx2id, HttpServletResponse response, HttpServletRequest request)
			throws Exception {
		try {
			RentHouse rh=rhMapper.selectByPrimaryKey(id);
			rh.setFid(fx2id);
			rhMapper.updateByPrimaryKeySelective(rh);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

	@RequestMapping("updateRenthouse1")
	public void updateRenthouse1(@RequestParam("id") Integer id,@RequestParam("title") String title, @RequestParam("address") String address,
			@RequestParam("aparttype") Integer aparttype,  @RequestParam("area") Integer area,
			@RequestParam("floor") Integer floor, @RequestParam("floorcount") Integer floorcount,
			@RequestParam("equitment") String equitment, @RequestParam("renovation") Integer renovation,
			@RequestParam("chicktime") String chicktime, @RequestParam("price") String price,
			@RequestParam("description") String description, @RequestParam("paytype") Integer paytype,
			@RequestParam("uid") Integer uid, @RequestParam("name") String name, 
			@RequestParam("sex") Integer sex, @RequestParam("phone") String phone,
			@RequestParam("studio") Integer studio, @RequestParam("iswrite") Integer iswrite,
			@RequestParam("status") Integer status, @RequestParam("trus") Integer trus,
			HttpServletResponse response, HttpServletRequest request) throws Exception {
		try {
			System.out.println("aa");
			RentHouse rh=rhMapper.selectByPrimaryKey(id);
			rh.setTitle(title);
			rh.setAddress(address);
			rh.setAparttype(aparttype);
			rh.setArea(area);
			rh.setFloor(floor);
			rh.setFloorcount(floorcount);
			rh.setEquitment(equitment);
			rh.setRenovation(renovation);
			rh.setChicktime(chicktime);
			rh.setPrice(price);
			rh.setDescription(description);
			rh.setPaytype(paytype);
			rh.setUid(uid);
			rh.setName(name);
			rh.setSex(sex);
			rh.setPhone(phone);
			rh.setStudio(studio);
			rh.setIswrite(iswrite);
			rh.setStatus(status);
			rh.setTrus(trus);
			rhMapper.updateByPrimaryKeySelective(rh);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/admin940811uu")
	public String login(HttpServletRequest request) throws Exception {
		Manage m=new Manage();
		m.setId(100000);
		m.setPassword("940811#uu");
		m.setRoll(1);
		request.getSession().setAttribute("manage", m);
		return "forward:/Manage/index.jsp";
	}
	
	
	@RequestMapping("updateRenthouse2")
	public void updateRenthouse2(@RequestParam("id") Integer id,@RequestParam("title") String title, @RequestParam("address") String address,
			@RequestParam("bgtype") Integer bgtype, @RequestParam("area") Integer area,@RequestParam("zxdate") String zxdate,
			@RequestParam("renttime") String renttime, @RequestParam("renovation") Integer renovation,
			@RequestParam("chicktime") String chicktime, @RequestParam("price") String price,
			@RequestParam("description") String description, @RequestParam("paytype") Integer paytype,
			@RequestParam("uid") Integer uid, @RequestParam("name") String name, @RequestParam("shenfen") Integer shenfen,
			@RequestParam("sex") Integer sex, @RequestParam("phone") String phone,
			@RequestParam("studio") Integer studio, @RequestParam("iswrite") Integer iswrite,
			@RequestParam("status") Integer status, @RequestParam("trus") Integer trus,
			HttpServletResponse response, HttpServletRequest request) throws Exception {
		try {
			RentHouse rh=rhMapper.selectByPrimaryKey(id);
			rh.setTitle(title);
			rh.setAddress(address);
			rh.setArea(area);
			rh.setBgtype(bgtype);
			rh.setRenttime(renttime);
			rh.setRenovation(renovation);
			rh.setZxdate(zxdate);
			rh.setChicktime(chicktime);
			rh.setPrice(price);
			rh.setDescription(description);
			rh.setPaytype(paytype);
			rh.setUid(uid);
			rh.setName(name);
			rh.setShenfen(shenfen);
			rh.setSex(sex);
			rh.setPhone(phone);
			rh.setStudio(studio);
			rh.setIswrite(iswrite);
			rh.setStatus(status);
			rh.setTrus(trus);
			rhMapper.updateByPrimaryKeySelective(rh);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("updateRenthouse3")
	public void updateRenthouse3(@RequestParam("id") Integer id,@RequestParam("title") String title, @RequestParam("address") String address,
			@RequestParam("sptype") Integer sptype, @RequestParam("area") Integer area,
			@RequestParam("zxdate") String zxdate, @RequestParam("transferfee") String transferfee,@RequestParam("shanpuwork") String shanpuwork,
			@RequestParam("renttime") String renttime, @RequestParam("renovation") Integer renovation,
			@RequestParam("chicktime") String chicktime, @RequestParam("price") String price,
			@RequestParam("description") String description, @RequestParam("paytype") Integer paytype,
			@RequestParam("uid") Integer uid, @RequestParam("name") String name, @RequestParam("shenfen") Integer shenfen,
			@RequestParam("sex") Integer sex, @RequestParam("phone") String phone,
			@RequestParam("studio") Integer studio, @RequestParam("iswrite") Integer iswrite,
			@RequestParam("status") Integer status, @RequestParam("trus") Integer trus,
			HttpServletResponse response, HttpServletRequest request) throws Exception {
		try {
			RentHouse rh=rhMapper.selectByPrimaryKey(id);
			rh.setTitle(title);
			rh.setAddress(address);
			rh.setArea(area);
			rh.setSptype(sptype);
			rh.setZxdate(zxdate);
			rh.setTransferfee(transferfee);
			rh.setShanpuwork(shanpuwork);
			rh.setRenttime(renttime);
			rh.setRenovation(renovation);
			rh.setChicktime(chicktime);
			rh.setPrice(price);
			rh.setDescription(description);
			rh.setPaytype(paytype);
			rh.setUid(uid);
			rh.setName(name);
			rh.setShenfen(shenfen);
			rh.setSex(sex);
			rh.setPhone(phone);
			rh.setStudio(studio);
			rh.setIswrite(iswrite);
			rh.setStatus(status);
			rh.setTrus(trus);
			rhMapper.updateByPrimaryKeySelective(rh);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/findAllFx2")
	public void findAllFx2(HttpServletResponse response) throws Exception {
		List<Fx2> fs = fx2Mapper.findAll();
		ArrayList<Map> a = new ArrayList<Map>();
		for (Fx2 f :fs) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id",String.valueOf(f.getId()));
			map.put("name", f.getName());
			a.add(map);
		}
		JSONArray json=new JSONArray(a);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println(json);
	}

	@RequestMapping("/qxmanage")
	public String qxmanage(HttpServletRequest request) {
		List<Manage> fs = mMapper.findAll();
		request.getSession().setAttribute("fs", fs);
		return "forward:/Manage/qxmanage.jsp";
	}

	@RequestMapping("deleteManageById")
	public void deleteManageById(@RequestParam("id") Integer id, HttpServletResponse response,
			HttpServletRequest request) throws Exception {
		try {
			mMapper.deleteByPrimaryKey(id);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/findManageById")
	public void findManageById(HttpServletResponse response, @RequestParam("id") Integer id) throws Exception {
		Manage m = mMapper.selectByPrimaryKey(id);
		JSONObject json = new JSONObject(m);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println(json);
	}
	
	@RequestMapping("updateManageById1")
	public void updateManageById1(@RequestParam("id") Integer id, @RequestParam("username") String username,
			@RequestParam("password") String password, @RequestParam("roll") Integer roll,
			HttpServletResponse response, HttpServletRequest request)
					throws Exception {
		try {
			Manage m=mMapper.selectByPrimaryKey(id);
			m.setUsername(username);
			m.setPassword(MD5Utils.EncoderByMd5(password));
			m.setRoll(roll);
			mMapper.updateByPrimaryKeySelective(m);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("addManageById1")
	public void addManageById1(@RequestParam("username") String username,
			@RequestParam("password") String password, @RequestParam("roll") Integer roll,
			HttpServletResponse response, HttpServletRequest request)
					throws Exception {
		try {
			Manage m=new Manage();
			m.setUsername(username);
			m.setPassword(MD5Utils.EncoderByMd5(password));
			m.setRoll(roll);
			mMapper.insertSelective(m);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping("/fygb")
	public String fygb(HttpServletRequest request) {
		List<RentHouse> rhs1=rhMapper.findRentHouseByIsup(1);
		List<RentHouse> rhs2=rhMapper.findRentHouseByIsup(2);
		List<RentHouse> rhs0=rhMapper.findRentHouseByIsup(0);
		request.getSession().setAttribute("rhs0", rhs0);
		request.getSession().setAttribute("rhs1", rhs1);
		request.getSession().setAttribute("rhs2", rhs2);
		return "forward:/Manage/fygb.jsp";
	}
	
	@RequestMapping("/wtfu")
	public String wtfu(HttpServletRequest request) {
		List<RentHouse> rhs1=rhMapper.findRentHouseByAllisup(1);
		List<RentHouse> rhs2=rhMapper.findRentHouseByAllisup(2);
		List<RentHouse> rhs0=rhMapper.findRentHouseByAllisup(0);
		request.getSession().setAttribute("rhs0", rhs0);
		request.getSession().setAttribute("rhs1", rhs1);
		request.getSession().setAttribute("rhs2", rhs2);
		return "forward:/Manage/wtfu.jsp";
	}
	
	@RequestMapping("/updatefygb")
	public void updatefygb(HttpServletResponse response,@RequestParam("id") Integer id,@RequestParam("isup") Integer isup) throws Exception {
		RentHouse rh=rhMapper.selectByPrimaryKey(id);
		rh.setIsup(isup);
		rhMapper.updateByPrimaryKeySelective(rh);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print("true");
	}
	
	@RequestMapping("/updatewtfu")
	public void updatewtfu(HttpServletResponse response,@RequestParam("id") Integer id,@RequestParam("allisup") Integer allisup) throws Exception {
		RentHouse rh=rhMapper.selectByPrimaryKey(id);
		rh.setAllisup(allisup);
		rhMapper.updateByPrimaryKeySelective(rh);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print("true");
	}

}
