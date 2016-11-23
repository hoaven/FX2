package com.zhanwkj.fx2.constant;

public class EquitmentType
{
  public static final String C1 = "床铺";
  public static final String C2 = "电视";
  public static final String C3 = "洗衣机";
  public static final String C4 = "空调";
  public static final String C5 = "冰箱";
  public static final String C6 = "热水器";
  public static final String C7 = "宽带";
  public static final String C8 = "厨卫";
  public static final String[] EquitmentTypes = { C1,C2,C3,C4,C5,C6,C7,C8 };

  public static String setEquitmentType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < EquitmentTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return EquitmentTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmyEquitmentType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < EquitmentTypes.length; i++) {
	      if (it.equals(EquitmentTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}