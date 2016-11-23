package com.zhanwkj.fx2.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhanwkj.fx2.api.util.wxUploadUtil;

import net.sf.json.JSONObject;

/**
 * 文件上传逻辑控制层
 * 
 * @author Chitry
 *
 */
@RequestMapping("WxUpload")
@Controller
public class WxUploadController {

	@RequestMapping("WxUploadApi")
	public void wxPayApi(HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws IOException{
			
		File f = new File("D:/test.png");
        String appId = "";
        String appSecret = "";
        String token = wxUploadUtil.getToken(appId, appSecret);
//        JSONObject o = wxUploadUtil.uploadMedia(f, token.getAccessToken(), "image");
//        System.out.println(o.toString());

        //下载刚刚上传的图片以id命名
//        String media_id = o.getString("media_id");
//        File t = wxUploadUtil.downloadMedia("D:/"+media_id+".png", token.getAccessToken(), media_id);

	}

}
