package com.zhanwkj.fx2.action;

import com.google.code.kaptcha.Producer;
import java.awt.image.BufferedImage;
import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @desc:验证逻辑控制层
 * @author Chitry
 * @className:YZMController2
 * @time:下午7:58:28
 */
@RequestMapping({"KaptchaImage"})
@Controller
public class YZMController2
{

  @Resource
  private Producer captchaProducer = null;

  @RequestMapping({"/getKaptchaImage"})
  public ModelAndView getKaptchaImage(HttpServletRequest request, HttpServletResponse response) throws Exception {
    HttpSession session = request.getSession();
    String code = (String)session.getAttribute("KAPTCHA_SESSION_KEY");

    response.setDateHeader("Expires", 0L);

    response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");

    response.addHeader("Cache-Control", "post-check=0, pre-check=0");

    response.setHeader("Pragma", "no-cache");

    response.setContentType("image/jpeg");

    String capText = this.captchaProducer.createText();

    session.setAttribute("KAPTCHA_SESSION_KEY", capText);

    BufferedImage bi = this.captchaProducer.createImage(capText);
    ServletOutputStream out = response.getOutputStream();

    ImageIO.write(bi, "jpg", out);
    try {
      out.flush();
    } finally {
      out.close();
    }
    return null;
  }
}