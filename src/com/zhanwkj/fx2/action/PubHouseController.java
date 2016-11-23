package com.zhanwkj.fx2.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.zhanwkj.fx2.constant.PayType;
import com.zhanwkj.fx2.dao.CollectMapper;
import com.zhanwkj.fx2.dao.FansMapper;
import com.zhanwkj.fx2.dao.RentHouseMapper;
import com.zhanwkj.fx2.dao.SeeHouseMapper;
import com.zhanwkj.fx2.model.Fans;
import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.utils.Query;

import net.sf.json.JSONObject;
/**
 * 
 * 房源发布逻辑控制层
 * 
 * @author
 *
 */
@RequestMapping("User")
@Controller
public class PubHouseController {
	@Autowired
	FansMapper fansMapper;
	@Autowired
	SeeHouseMapper seeHouseMapper;

	@Autowired
	RentHouseMapper rentHouseMapper;
	@Autowired
	CollectMapper collectMapper;
	
	
	@RequestMapping("delpic")
	public void delphoto(@RequestParam("picurl") String picurl,  HttpServletResponse response,
			HttpServletRequest request) throws Exception {
		try {
			String path = request.getSession().getServletContext().getRealPath(picurl);
			System.out.println("path:"+path);
			path = path.replace("\\","/");
			System.out.println("PATH:"+path);
			File file = new File(path);
			if(file.exists()){
				file.delete(); 
			}
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	@RequestMapping("addpicurl")
	public void uploadphoto(@RequestParam("file") MultipartFile file,  HttpServletResponse response,
			HttpServletRequest request) throws Exception {
		try {
			String picname = file.getOriginalFilename();
			String filename = System.currentTimeMillis() + picname.substring(picname.lastIndexOf("."));
			String savepath = request.getSession().getServletContext().getRealPath("/data/img/renthouse/temp/");
			File targetFile = new File(savepath, filename);
			file.transferTo(targetFile);
			String newpath = "/data/img/renthouse/temp/"+filename;
			
			System.out.println("图片路径："+newpath);
			RentHouse r = new RentHouse();
			r.setPicurl(newpath);
			JSONObject jsonObject1=JSONObject.fromObject(r);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print(jsonObject1);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("pushou")
	public String init(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IllegalStateException, IOException {
		String hid  = request.getParameter("hid");//类别

		RentHouse renthouse = new RentHouse();

		Fans fans = (Fans) session.getAttribute("user");

		/**
		 * 图片处理
		 */
		String picurls = request.getParameter("picurls");//图片
		if(picurls.equals("0")){
			picurls = "/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg-/data/img/renthouse/1.jpg";
		}else{
			String[] p = picurls.split("-");
			String path = null;
			for(int i=0;i<p.length;i++){
				String savepath = request.getSession().getServletContext().getRealPath(p[i]);
				savepath = savepath.replace("\\","/");
				MultipartFile file = (MultipartFile) new File(savepath);
				String picname = ((MultipartFile) file).getOriginalFilename();
				System.out.println("picname:"+picname);
				String filename = System.currentTimeMillis() + picname.substring(picname.lastIndexOf("."));//重命名
				System.out.println("filename:"+filename);
				String newpath = request.getSession().getServletContext().getRealPath("/data/img/renthouse/");
				System.out.println("newpath:"+newpath);
				File targetFile = new File(newpath, filename);
				file.transferTo(targetFile);
				/**
				 * 删除临时文件
				 */
				File f = new File(savepath);
				f.delete();
				if(i==0){
					path = "/data/img/renthouse/"+filename;
				}else{
					path = path + "-" + "/data/img/renthouse/"+filename;
				}
			}
			picurls = path;
		}
		
		System.out.println("picurl:"+picurls);
		
		int i=0;
		int n=0;
		if("1".equals(hid.trim())){

			String title  = request.getParameter("title");//小区名称
			String address  = request.getParameter("address");//小区地址
			String qu  = request.getParameter("qu");//小区地址
			String jd  = request.getParameter("jd");//小区地址
			String juti  = request.getParameter("juti");//小区地址
			address = address+qu+jd+juti;
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
			//String address  = request.getParameter("address");
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
			renthouse.setPicurl(picurls);//配置默认图片
			rentHouseMapper.insert(renthouse);  //插入住宅
			Query te = new Query();
			te.setName(name);
			te.setTitle(title);
			te.setAddress(address);
			te.setPrice_type(price_type);
			RentHouse rr =rentHouseMapper.selectQuery(te).get(0);
			System.out.println(rr.getId());
		//	RentHouse rr = rentHouseMapper.selectOneByOtherKey(name, title, address, price_type);
			session.setAttribute("FBHouse", rr);
			return "forward:/Home/house/success.jsp";
		}
		if("2".equals(hid.trim())){
			String title  = request.getParameter("title");//小区名称
			String address  = request.getParameter("address");
			String qu  = request.getParameter("qu");
			String jd  = request.getParameter("jd");
			String juti  = request.getParameter("juti");
			address = address+qu+jd+juti;			
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
			renthouse.setTitle(title);
			renthouse.setAddress(address);
			renthouse.setPrice(price);
			renthouse.setType(2);
			renthouse.setArea(area);
			renthouse.setRenovation(renovation);
			renthouse.setRenttime(renttime);
			renthouse.setBgtype(bangong_type);
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
			renthouse.setPicurl(picurls);//配置默认图片
			
			rentHouseMapper.insert(renthouse);  //插入办公
		 //	RentHouse rr = rentHouseMapper.selectOneByOtherKey(name, title, address, price_type);
			Query te = new Query();
			te.setName(name);
			te.setTitle(title);
			te.setAddress(address);
			te.setPrice_type(price_type);
			RentHouse rr =rentHouseMapper.selectQuery(te).get(0);
		 	session.setAttribute("FBHouse", rr);
			return "forward:/Home/house/success.jsp";
		}
		//	if("商铺".equals(hid)){
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
			renthouse.setStatus(2);//默认不上架
			renthouse.setStudio(2);//默认审核未通过
			renthouse.setTrus(2);//默认不托管
			renthouse.setColnum(1);//默认收藏次数为1
			renthouse.setIsup(0);//默认不开启广播
			renthouse.setAllisup(0);//默认不全程委托
			renthouse.setFid(0);//默认未绑定蜂小二
			renthouse.setClicknum(1);//默认点击量为1
			renthouse.setTjpersonid("无推荐人");//默认无推荐人
			renthouse.setPicurl(picurls);//配置默认图片
			
			rentHouseMapper.insert(renthouse);  //插入商铺
			Query te = new Query();
			te.setName(name);
			te.setTitle(title);
			te.setAddress(address);
			te.setPrice_type(price_type);
			RentHouse rr =rentHouseMapper.selectQuery(te).get(0);
		//	RentHouse rr = rentHouseMapper.selectOneByOtherKey(name, title, address, price_type);
			session.setAttribute("FBHouse", rr);
			return "forward:/Home/house/success.jsp";
		}

	}

}
