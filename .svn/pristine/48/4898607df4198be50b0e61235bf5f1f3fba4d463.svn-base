package com.zhanwkj.fx2.constant;

public class TrusType
{
  public static final String C1 = "托管";
  public static final String C2 = "未托管";
  public static final String[] TrusTypes = { "托管", "未托管" };

  public static String setTrusType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < TrusTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return TrusTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmyTrusType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < TrusTypes.length; i++) {
	      if (it.equals(TrusTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}