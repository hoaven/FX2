package com.zhanwkj.fx2.constant;

public class ChickTimeType
{
  public static final String C1 = "随时";
  public static final String C2 = "用户自定义";
  public static final String[] ChickTimeTypes = { "随时", "用户自定义" };

  public static String setChickTimeType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < ChickTimeTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return ChickTimeTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmyChickTimeType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < ChickTimeTypes.length; i++) {
	      if (it.equals(ChickTimeTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}