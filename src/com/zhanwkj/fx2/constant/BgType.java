package com.zhanwkj.fx2.constant;

public class BgType
{
  public static final String C1 = "高级写字楼";
  public static final String C2 = "商务写字楼";
  public static final String C3 = "普通写字楼";
  public static final String C4 = "甲级写字楼";
  public static final String C5 = "乙级写字楼";
  public static final String[] BgTypes = { "高级写字楼", "商务写字楼", "普通写字楼", "甲级写字楼", "乙级写字楼" };

  public static String setBgType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < BgTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return BgTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmyBgType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < BgTypes.length; i++) {
	      if (it.equals(BgTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}