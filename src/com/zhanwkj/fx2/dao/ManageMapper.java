package com.zhanwkj.fx2.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhanwkj.fx2.model.Fx2;
import com.zhanwkj.fx2.model.Manage;

public interface ManageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Manage record);

    int insertSelective(Manage record);

    Manage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Manage record);

    int updateByPrimaryKey(Manage record);

	Manage findAdminsByCheck(@Param(value="username")String username, @Param(value="password")String password, @Param(value="roll")Integer roll);

	List<Manage> findAll();

}