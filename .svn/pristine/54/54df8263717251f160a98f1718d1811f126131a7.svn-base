package com.zhanwkj.fx2.utils;

import java.util.ArrayList;
import java.util.List;

import com.zhanwkj.fx2.constant.ApartType;
import com.zhanwkj.fx2.constant.ChickTimeType;
import com.zhanwkj.fx2.constant.HouseType;
import com.zhanwkj.fx2.constant.PayType;
import com.zhanwkj.fx2.constant.RenovationType;
import com.zhanwkj.fx2.constant.ShenFenType;
import com.zhanwkj.fx2.constant.SpType;
import com.zhanwkj.fx2.constant.StudioType;
import com.zhanwkj.fx2.constant.TrusType;
import com.zhanwkj.fx2.constant.UpType;
import com.zhanwkj.fx2.constant.WriteType;
import com.zhanwkj.fx2.model.RentHouse;

public class HouseUtil {

	///////////////////////////////////////////////////////////////////////////////////
	/*
	 * 下面是关于房源数据优化处理的工具类
	 */
	///////////////////////////////////////////////////////////////////////////////////

	/**
	 * 更改List集合中的房源数据信息：删除未绑定
	 * @param xxHouse
	 * @return
	 */
	public static List<RentHouse> setRentHouses(List<RentHouse> xxHouse){

		for(int i=0;i<xxHouse.size();i++){
			RentHouse r = xxHouse.get(i);//取出房源对象数据
			r = setRentHouse(r);//参数数据配置
			xxHouse.set(i, r);//修改List集合中的原有数据
		}
		List<RentHouse> yyHouse = new ArrayList<RentHouse>();
		for(int i=0;i<xxHouse.size();i++){
			if(xxHouse.get(i).getFid()!=0){
				yyHouse.add(xxHouse.get(i));//删除未绑定的房源
			}
		}
		return yyHouse;
	}
	
	/**
	 * 更改List集合中的房源数据信息：不删除未绑定
	 * @param xxHouse
	 * @return
	 */
	public static List<RentHouse> setRentHouses2(List<RentHouse> xxHouse){

		for(int i=0;i<xxHouse.size();i++){
			RentHouse r = xxHouse.get(i);//取出房源对象数据
			r = setRentHouse(r);//参数数据配置
			xxHouse.set(i, r);//修改List集合中的原有数据
		}
		return xxHouse;
	}

	/**
	 * 批量设置房源图片：配置单张
	 * @param xxHouse
	 * @return
	 */
	public static List<RentHouse> setRentHousePic(List<RentHouse> xxHouse){

		for(int i=0;i<xxHouse.size();i++){
			RentHouse r = xxHouse.get(i);//取出房源对象数据
			String p[] = r.getPicurl().split("-");
			r.setPicurl(p[0]);//仅存入第一张图片
			xxHouse.set(i, r);//修改List集合中的原有数据
		}
		return xxHouse;
	}

	/**
	 * 设置房源图片：配置单张
	 * @param r
	 * @return
	 */
	public static RentHouse setRentHousesimPic(RentHouse r){
		String p[] = r.getPicurl().split("-");
		r.setPicurl(p[0]);//仅存入第一张图片
		return r;
	}


	/**
	 * 房源数据中的参数数据处理
	 * @param r
	 * @return
	 */
	public static RentHouse setRentHouse(RentHouse r){
		System.out.println("\n\n\nhouseid:"+r.getId());
		if (r.getChicktime().equals("1")) {
			r.setChicktime(ChickTimeType.C1);
		}

		//房源涉及参数：11个
		r.setRenttype(HouseType.setHouseType(r.getType()));
		r.setRentaparttype(ApartType.setApartType(r.getAparttype()));
		r.setRentsptype(SpType.setSpType(r.getSptype()));
		r.setRentrenovation(RenovationType.setRenovationType(r.getRenovation()));
		r.setRentpaytype(PayType.setPayType(r.getPaytype()));
		r.setRentshenfen(ShenFenType.setShenFenType(r.getShenfen()));
		r.setRentisup(UpType.setUpType(r.getIsup()));
		r.setRentiswrite(WriteType.setWriteType(r.getIswrite()));
		r.setRentstatus(UpType.setUpType(r.getStatus()));
		r.setRentstudio(StudioType.setStudioType(r.getStudio()));
		r.setRenttrus(TrusType.setTrusType(r.getTrus()));
		/**
		 * 设置房源托管按钮样式
		 */
		if(r.getTrus()==1){
			r.setTrusstyle(" ");
		}else{
			r.setTrusstyle("color: #999999;");//颜色变暗
		}
		return r;
	}

}
