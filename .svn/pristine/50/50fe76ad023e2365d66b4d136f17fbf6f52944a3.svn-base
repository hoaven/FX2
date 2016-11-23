package com.zhanwkj.fx2.constant;

public class HouseType
{
  public static final String C1 = "住宅";
  public static final String C2 = "办公";
  public static final String C3 = "商铺";
  public static final String[] HouseTypes = { "住宅", "办公", "商铺" };

  public static String setHouseType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < HouseTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return HouseTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmyHouseType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < HouseTypes.length; i++) {
	      if (it.equals(HouseTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}