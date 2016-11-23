package com.zhanwkj.fx2.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.service.RentHouseService;
import com.zhanwkj.fx2.utils.ReadConfig;

/**
 * 
 * @desc:文件逻辑控制层
 * @author Chitry
 * @className:CheckController
 * @time:下午7:58:28
 */
@RequestMapping("Files")
@Controller
public class FilesController {
	
	/**
	 * 阅读蜂小二快组房源协议文件
	 * 文件路径在config.properties中进行设置
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("readfile")
	public String readFiles(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		String content = ReadConfig.readFileByChars();
		session.setAttribute("filecontent", content);
		return "Home/pros";
	}
}

