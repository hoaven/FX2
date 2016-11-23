package com.zhanwkj.fx2.constant;

public class ShenFenType
{
  public static final String C1 = "业主";
  public static final String C2 = "租客";
  public static final String C3 = "管理员";
  public static final String[] ShenFenTypes = { "业主", "租客", "管理员" };

  public static String setShenFenType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < ShenFenTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return ShenFenTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmyShenFenType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < ShenFenTypes.length; i++) {
	      if (it.equals(ShenFenTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}