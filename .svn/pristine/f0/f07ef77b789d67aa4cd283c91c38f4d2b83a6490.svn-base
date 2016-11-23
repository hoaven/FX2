package com.zhanwkj.fx2.constant;

public class SexType
{
  public static final String C1 = "男";
  public static final String C2 = "女";
  public static final String C3 = "未知";
  public static final String[] SexTypes = { "男", "女", "未知" };

  public static String setSexType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < SexTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return SexTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmySexType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < SexTypes.length; i++) {
	      if (it.equals(SexTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}