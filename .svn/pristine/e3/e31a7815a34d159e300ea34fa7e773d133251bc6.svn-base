package com.zhanwkj.fx2.api;
import java.io.IOException;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import com.zhanwkj.fx2.utils.ReadConfig;

public class sendsms {

	
	private static String Url = ReadConfig.sms_url;
	

	
	/**
	 * 验证码获取
	 * @param args
	 * @return
	 */
	public static int phoneCheck(String phonenum) {

		HttpClient client = new HttpClient(); 
		PostMethod method = new PostMethod(Url); 

		client.getParams().setContentCharset("UTF-8");
		method.setRequestHeader("ContentType","application/x-www-form-urlencoded;charset=UTF-8");
		int mobile_code = (int)((Math.random()*9+1)*100000);
		 String content = new String("您的确认码是：" + mobile_code + "。请不要把确认码泄露给其他人。如非本人操作，可不用理会！"); 

		NameValuePair[] data = {//提交短信
				new NameValuePair("account", ReadConfig.user_account), 
				new NameValuePair("password", ReadConfig.user_password), //密码可以使用明文密码或使用32位MD5加密
				//new NameValuePair("password", util.StringUtil.MD5Encode("密码")),
				new NameValuePair("mobile", phonenum), 
				new NameValuePair("content", content),
		};
		method.setRequestBody(data);		
		try {
			client.executeMethod(method);	
			String SubmitResult =method.getResponseBodyAsString();
			Document doc = DocumentHelper.parseText(SubmitResult); 
			Element root = doc.getRootElement();
			String code = root.elementText("code");	
			
			String msg = root.elementText("msg");	
			String smsid = root.elementText("smsid");
			
			if("2".equals(code)){
				System.out.println("短信提交成功");
			}
			
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		
		return mobile_code;	  //返回验证码

	}

}