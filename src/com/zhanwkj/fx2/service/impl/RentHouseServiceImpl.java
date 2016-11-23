package com.zhanwkj.fx2.service.impl;

import com.zhanwkj.fx2.dao.RentHouseMapper;
import com.zhanwkj.fx2.model.RentHouse;
import com.zhanwkj.fx2.service.RentHouseService;
import com.zhanwkj.fx2.utils.Query;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("rentHouseService")
public class RentHouseServiceImpl
  implements RentHouseService
{

  @Autowired
  RentHouseMapper rentHouseMapper;

  public int deleteByPrimaryKey(Integer id)
  {
    return this.rentHouseMapper.deleteByPrimaryKey(id);
  }

  public int insert(RentHouse record)
  {
    return this.rentHouseMapper.insert(record);
  }

  public int insertSelective(RentHouse record)
  {
    return this.rentHouseMapper.insertSelective(record);
  }

  public RentHouse selectByPrimaryKey(Integer id)
  {
    return this.rentHouseMapper.selectByPrimaryKey(id);
  }

  public int updateByPrimaryKeySelective(RentHouse record)
  {
    return this.rentHouseMapper.updateByPrimaryKeySelective(record);
  }

  public int updateByPrimaryKeyWithBLOBs(RentHouse record)
  {
    return this.rentHouseMapper.updateByPrimaryKeyWithBLOBs(record);
  }

  public int updateByPrimaryKey(RentHouse record)
  {
    return this.rentHouseMapper.updateByPrimaryKey(record);
  }

  public List<RentHouse> findAll()
  {
    return this.rentHouseMapper.findAll();
  }

  public List<RentHouse> selectQuery(Query query)
  {
    return this.rentHouseMapper.selectQuery(query);
  }

  public List<RentHouse> zhoubianHouse(Query query)
  {
    return this.rentHouseMapper.zhoubianHouse(query);
  }

  public int getTotalCount()
  {
    return this.rentHouseMapper.getTotalCount();
  }

  public RentHouse selectRenthouseOne(Integer id)
  {
    return this.rentHouseMapper.selectRenthouseOne(id);
  }

@Override
public List<RentHouse> findRentHouseByFX2Id(Integer id) {
	return this.rentHouseMapper.findRentHouseByFX2Id(id);
}
}