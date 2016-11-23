package com.zhanwkj.fx2.constant;

public class StudioType
{
  public static final String C1 = "通过";
  public static final String C2 = "未通过";
  public static final String[] StudioTypes = { "通过", "未通过" };

  public static String setStudioType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < StudioTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return StudioTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmyStudioType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < StudioTypes.length; i++) {
	      if (it.equals(StudioTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}