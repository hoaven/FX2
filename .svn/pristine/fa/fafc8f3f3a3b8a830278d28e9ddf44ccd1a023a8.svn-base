package com.zhanwkj.fx2.constant;

public class RenovationType
{
  public static final String C1 = "简装";
  public static final String C2 = "精装";
  public static final String C3 = "毛胚";
  public static final String[] RenovationTypes = { "简装", "精装", "毛胚" };

  public static String setRenovationType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < RenovationTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return RenovationTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmyRenovationType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < RenovationTypes.length; i++) {
	      if (it.equals(RenovationTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}