package com.zhanwkj.fx2.constant;

public class UpType
{
  public static final String C1 = "上架";
  public static final String C2 = "下架";
  public static final String[] UpTypes = { "上架", "下架" };

  public static String setUpType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < UpTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return UpTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmyUpType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < UpTypes.length; i++) {
	      if (it.equals(UpTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}