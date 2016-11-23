package com.zhanwkj.fx2.constant;

public class SpType
{
  public static final String C1 = "街铺";
  public static final String C2 = "百货超市";
  public static final String C3 = "专业市场";
  public static final String C4 = "其他";
  public static final String[] SpTypes = { "街铺", "百货超市", "专业市场", "其他" };

  public static String setSpType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < SpTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return SpTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmySpType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < SpTypes.length; i++) {
	      if (it.equals(SpTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}