package com.zhanwkj.fx2.constant;

public class ApartType
{
  public static final String C1 = "1室";
  public static final String C2 = "1室1厅";
  public static final String C3 = "1室2厅";
  public static final String C4 = "1室1厅1卫";
  public static final String C5 = "2室1厅1卫";
  public static final String C6 = "2室2厅2卫";
  public static final String C7 = "3室1厅1卫";
  public static final String C8 = "3室2厅2卫";
  public static final String C9 = "5室以上";
  public static final String[] ApartTypes = { "1室", "1室1厅", "1室2厅", "1室1厅1卫", "2室1厅1卫", "2室2厅2卫", "3室1厅1卫", "3室2厅2卫", "5室以上" };

  public static String setApartType(Integer it) {
    if (it == null) {
      return "空";
    }
    for (int i = 0; i < ApartTypes.length; i++) {
      if (i == it.intValue() - 1) {
        return ApartTypes[i];
      }
    }
    return "系统异常";
  }
  
  public static Integer setmyApartType(String it) {
	    if (it == null) {
	      return null;
	    }
	    for (int i = 0; i < ApartTypes.length; i++) {
	      if (it.equals(ApartTypes[i])) {
	        return i+1;
	      }
	    }
	    return null;
	  }
}