package com.zhanwkj.fx2.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.utils.Query;

public interface RentHouseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RentHouse record);

    int insertSelective(RentHouse record);

    RentHouse selectByPrimaryKey(Integer id);
    RentHouse selectRenthouseOne(Integer id);

    int updateByPrimaryKeySelective(RentHouse record);

    int updateByPrimaryKeyWithBLOBs(RentHouse record);
    int getTotalCount();
    int updateByPrimaryKey(RentHouse record);
    List<RentHouse> findAll();
    List<RentHouse> selectQuery(Query query);
    List<RentHouse> selectQueryCheck(Query query);
    List<RentHouse> zhoubianHouse(Query query);
	List<RentHouse> findRentHouseByType(@Param(value="type")Integer operation);
	List<RentHouse> findRentHouseByType1(Integer operation);
	List<RentHouse> findAllBytype(@Param(value="type")int i);
	List<RentHouse> findAllBycknum();
	
	List<RentHouse> RandfindRentHouseByType(Integer type);
	
	RentHouse selectOneByOtherKey(String name,String title,String address,String price);
	
	List<RentHouse> findRentHouseByFX2Id(Integer fid);
	

	List<RentHouse> findRentHouseByIsup(@Param(value="isup")int i);
	List<RentHouse> findRentHouseByAllisup(@Param(value="allisup")int i);
	List<RentHouse> findRentHouseCheck(Integer fid,Integer studio);
}