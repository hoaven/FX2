package com.zhanwkj.fx2.constant;

public class PayType
{
  public static final String C1 = "押一付一";
  public static final String C2 = "押一付二";
  public static final String C3 = "押一付三";
  public static final String C4 = "押二付一";
  public static final String C5 = "押二付二";
  public static final String C6 = "押二付三";
  public static final String C7 = "押三付一";
  public static final String C8 = "押三付二";
  public static final String C9 = "押三付三";
  public static final String C10 = "押三付六";
  public static final String[] PayTypes = { "押一付一", "押一付三","押一付二", "押二付一", "押二付二", "押二付三", "押三付一", "押三付二", "押三付三", "押三付六" };

  public static String setPayType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < PayTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return PayTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmyPayType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < PayTypes.length; i++) {
	      if (it.equals(PayTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}