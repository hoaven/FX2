package com.zhanwkj.fx2.dao;

import java.util.List;

import com.zhanwkj.fx2.model.SeeHouse;
import com.zhanwkj.fx2.utils.Query;
public interface SeeHouseMapper {
	int deleteByPrimaryKey(Integer id);

	int insert(SeeHouse record);

	int insertSelective(SeeHouse record);

	SeeHouse selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(SeeHouse record);

	int updateByPrimaryKey(SeeHouse record);

	List<SeeHouse> findAll();

	List<SeeHouse> findByQuery(Query query);
	List<Integer>	findCountByData();
	
	int	selectByUidSeeRentIs(Query query);
	int	countYytime(Query query);
	int	countFx2id(Query query);
	int	countRentid(Query query);
	
	List<String> getDistinctYytime(Query query);
	List<Integer> getDistinctRentid(Query query);
	List<Integer> getDistinctFx2id(Query query);
	
	List<String> getDistinctFxYytime(Query query);
	List<Integer> getDistinctFxRentid(Query query);
	List<Integer> getDistinctFxUid(Query query);
	
	int selectService(Query query);
	int	countSeenum(Query query);
	
	List<Integer>getFxidByUidandYytime(Query query);
	List<Integer>getUidByFx2idandYytime(Query query);
	List<Integer>getRentidByFYU(Query query);
}