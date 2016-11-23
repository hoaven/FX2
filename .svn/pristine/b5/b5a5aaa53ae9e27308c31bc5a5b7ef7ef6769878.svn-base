package com.zhanwkj.fx2.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhanwkj.fx2.api.util.HttpUtil;
import com.zhanwkj.fx2.dao.FansMapper;
import com.zhanwkj.fx2.model.Fans;
import com.zhanwkj.fx2.model.FansWithBLOBs;
import com.zhanwkj.fx2.utils.ReadConfig;

import net.sf.json.JSONObject;
/**
 * 
 * @author Chitry 曹辉
 * @Email chitry@outlook.com
 * 声明：本代码未经作者许可，请勿滥用
 * 接口权限中设置OAuth2.0网页授权
 * 授权访问的URL：https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx3d6fc73e51ece77f&redirect_uri=http%3A%2F%2Fwww.syzhen.cn&response_type=code&scope=snsapi_userinfo&state=749#wechat_redirect
 */
@RequestMapping("Oauth2")
@Controller
public class Oauth2Controller{
	@Autowired
	FansMapper fansMapper;

	@RequestMapping("wxOauth2")
	public String wxOauth2(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws IOException{
		
		/**
		 * 获取菜单数据
		 * 1-发布房源
		 * 2-租房
		 */
		Integer menu = Integer.parseInt(request.getParameter("menu"));
		request.setAttribute("menu", menu);
		
		String get_access_token_url="https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code";
		String get_userinfo="https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN";
		
		// 将请求、响应的编码均设置为UTF-8（防止中文乱码）  
		request.setCharacterEncoding("UTF-8");  
		response.setCharacterEncoding("UTF-8"); 
		String code=request.getParameter("code");

		get_access_token_url=get_access_token_url.replace("APPID", ReadConfig.appid);
		get_access_token_url=get_access_token_url.replace("SECRET", ReadConfig.secret);
		get_access_token_url=get_access_token_url.replace("CODE", code);

		String json=HttpUtil.getUrl(get_access_token_url);


		JSONObject jsonObject=JSONObject.fromObject(json);
		String access_token=jsonObject.getString("access_token");
		String openid=jsonObject.getString("openid");

		get_userinfo=get_userinfo.replace("ACCESS_TOKEN", access_token);
		get_userinfo=get_userinfo.replace("OPENID", openid);

		String userInfoJson=HttpUtil.getUrl(get_userinfo);

		JSONObject userInfoJO=JSONObject.fromObject(userInfoJson);

		String user_openid=userInfoJO.getString("openid");
		String user_nickname=userInfoJO.getString("nickname");
		String user_sex=userInfoJO.getString("sex");
		String user_province=userInfoJO.getString("province");
		String user_city=userInfoJO.getString("city");
		String user_country=userInfoJO.getString("country");
		String user_headimgurl=userInfoJO.getString("headimgurl");
		
		Fans user = new FansWithBLOBs();
		user.setOpenid(user_openid);
		user.setNickname(user_nickname);
		user.setSex(Integer.parseInt(user_sex));
		user.setProvince(user_province);
		user.setCity(user_city);
		user.setCountry(user_country);
		if(user_headimgurl==null){
			user.setHeadimgurl("http://wx.qlogo.cn/mmopen/R1TYAJ5QUiaRF1BepgzQskZXhmDyZO48SZRGdAP3Z92sSY0v474Hib8INiaM0P4ibL3kJX5CoOEA4NcD3rNaKNNTEg/0");
		}else{
			user.setHeadimgurl(user_headimgurl);
		}
		user.setIntegral(0);
		user.setGroupid(0);
		user.setPrice("0");
		Fans fan = new Fans();
		fan = fansMapper.selectFansByPOpeniId(openid);
		if(fan==null){//用户不存在于数据库中：添加进数据库
//			Fans fb = (FansWithBLOBs) user;
			fansMapper.insertSelective(user);
		}else{//用户存在于数据库中
		}
		session.setAttribute("user", user);
		
		if(menu==1){//发布房源
			return "forward:/Home/house/pubhouse.jsp";
		}
		return "forward:/Indez/index.do";
	}
}