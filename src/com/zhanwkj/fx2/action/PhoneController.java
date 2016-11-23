package com.zhanwkj.fx2.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zhanwkj.fx2.api.sendsms;

import net.sf.json.JSONArray;

/**
 * 电话验证码控制层
 * 
 * @author Chitry
 *
 */
@RequestMapping("Phone")
@Controller
public class PhoneController {
	@RequestMapping("getPhoneCode")
	public void init(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		//获取验证码
		String tel=request.getParameter("phone");
		int  content = sendsms.phoneCheck(tel);

		//if(res.equals("2")){   //判断是否发送成功
		session.setAttribute("phonecode", content);
		response.getWriter().print(true);
	}


	@RequestMapping("PhoneCodeCheck")
	public void init2(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		
		Object obj = session.getAttribute("phonecode");
		if(obj==null){   				//判断是否已经获取验证码
			System.out.println("没有验证");
			response.getWriter().print("false");
			
		}
		String content = (int)session.getAttribute("phonecode")+"";//获取通过第三方平台拿到验证码
		String 	passnum=request.getParameter("passnum");//获取页面上输入的验证码
		System.out.println("coontent:"+content+"passnum:"+passnum);
		//校验验证码
		if(content.equals(passnum)){
			response.getWriter().print("true");
		}else{
			response.getWriter().print("false");
		}
	}
}