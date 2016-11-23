package com.zhanwkj.fx2.constant;

public class SeePayType
{
  public static final String C1 = "99元带看服务费用";
  public static final String C2 = "签署支付15天佣金";
  public static final String[] SeePayTypes = { "99元带看服务费用", "签署支付15天佣金" };

  public static String setSeePayType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < SeePayTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return SeePayTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmySeePayType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < SeePayTypes.length; i++) {
	      if (it.equals(SeePayTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}