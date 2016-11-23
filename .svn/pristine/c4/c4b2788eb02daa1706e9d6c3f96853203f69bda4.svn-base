package com.zhanwkj.fx2.constant;

public class WriteType
{
  public static final String C1 = "已签约";
  public static final String C2 = "未签约";
  public static final String[] WriteTypes = { "已签约", "未签约" };

  public static String setWriteType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < WriteTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return WriteTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmyWriteType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < WriteTypes.length; i++) {
	      if (it.equals(WriteTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}