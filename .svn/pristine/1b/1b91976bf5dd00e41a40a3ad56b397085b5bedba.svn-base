package com.zhanwkj.fx2.constant;

public class SeeIsPay
{
  public static final String C1 = "已支付";
  public static final String C2 = "未支付";
  public static final String[] SeeIsPays = { "已支付", "未支付" };

  public static String SeeIsPay(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < SeeIsPays.length; i++) {
      if (i == it.intValue() - 1) {
        return SeeIsPays[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmySeeIsPay(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < SeeIsPays.length; i++) {
	      if (it.equals(SeeIsPays[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}