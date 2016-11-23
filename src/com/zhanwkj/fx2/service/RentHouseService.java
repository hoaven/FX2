package com.zhanwkj.fx2.service;

import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.utils.Query;
import java.util.List;

public abstract interface RentHouseService
{
  public abstract int deleteByPrimaryKey(Integer paramInteger);

  public abstract int insert(RentHouse paramRentHouse);

  public abstract int insertSelective(RentHouse paramRentHouse);

  public abstract RentHouse selectByPrimaryKey(Integer paramInteger);

  public abstract int updateByPrimaryKeySelective(RentHouse paramRentHouse);

  public abstract int updateByPrimaryKeyWithBLOBs(RentHouse paramRentHouse);

  public abstract int updateByPrimaryKey(RentHouse paramRentHouse);

  public abstract int getTotalCount();

  public abstract List<RentHouse> findAll();

  public abstract RentHouse selectRenthouseOne(Integer paramInteger);

  public abstract List<RentHouse> selectQuery(Query paramQuery);

  public abstract List<RentHouse> zhoubianHouse(Query paramQuery);

public abstract List<RentHouse> findRentHouseByFX2Id(Integer id);
}