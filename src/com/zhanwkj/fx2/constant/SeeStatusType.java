package com.zhanwkj.fx2.constant;

public class SeeStatusType
{
  public static final String C1 = "未结束";
  public static final String C2 = "已结束";
  public static final String[] SeeStatusTypes = { "未结束", "已结束" };

  public static String setSeeStatusType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < SeeStatusTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return SeeStatusTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmySeeStatusType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < SeeStatusTypes.length; i++) {
	      if (it.equals(SeeStatusTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}