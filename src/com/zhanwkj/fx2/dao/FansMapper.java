package com.zhanwkj.fx2.dao;

import java.util.List;

import com.zhanwkj.fx2.model.Fans;
import com.zhanwkj.fx2.model.FansWithBLOBs;

public interface FansMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FansWithBLOBs record);

    int insertSelective(Fans user);

    FansWithBLOBs selectByPrimaryKey(Integer id);
    
    Fans selectFansByPrimaryKey(Integer id);
    
    Fans selectFansByPOpeniId(String openid);
    
    int updateByPrimaryKeySelective(FansWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(FansWithBLOBs record);

    int updateByPrimaryKey(Fans record);
    
    List<Fans> findAll();
}