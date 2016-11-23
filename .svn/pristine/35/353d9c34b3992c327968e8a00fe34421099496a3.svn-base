package com.zhanwkj.fx2.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhanwkj.fx2.model.Collect;
import com.zhanwkj.fx2.utils.Query;

public interface CollectMapper {
	
    int deleteByPrimaryKey(Integer id);

    int insert(Collect record);

    int insertSelective(Collect record);

    Collect selectByPrimaryKey(Integer id);

    int	selectByUidRentIs(Query query);
   
    int updateByPrimaryKeySelective(Collect record);

    int updateByPrimaryKey(Collect record);
    List<Collect> myCollect(Integer uid);
	void deleteByunio(@Param(value="fid")Integer fid, @Param(value="s")Integer s);
}