package com.zhanwkj.fx2.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 * 日期工具类
 * @author Chitry
 *
 */
public class DateUtil
{
	public static String getnow()
	{
		Date date = new Date();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(date);
		return time;
	}

	public static String cknow(Date date)
	{
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String time = format.format(date);
		return time;
	}

	public static Date kcnow(String data)
			throws ParseException
	{
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		return date.parse(data);
	}

	public static String getTimeDifferent(String now, String old, int tid)
			throws ParseException
	{
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date nows = df.parse(now);
		Date olds = df.parse(old);
		long l = nows.getTime() - olds.getTime();
		long day = 0L;
		long hour = 0L - day * 24L;
		long min = 0L - day * 24L * 60L - hour * 60L;
		long s = 0L - day * 24L * 60L - hour * 60L * 60L - min * 60L;
		if (tid == 1) {
			return Long.toString(day);
		}
		String td = day + "天" + hour + "小时" + min + "分钟" + s + "秒";
		return td;
	}

	public static String getFuture(int renewalsdata,String validatetime){
		Date date = null;
		try {
			date = kcnow(validatetime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Calendar   calendar   =   new   GregorianCalendar(); 
		calendar.setTime(date); 
		calendar.add(calendar.DATE,renewalsdata);//把日期往后增加一天.整数往后推,负数往前移动 
		date=calendar.getTime();
		String dd = cknow(date);
		return dd;
	}
}