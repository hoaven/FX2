package com.zhanwkj.fx2.dao;

import java.util.List;

import com.zhanwkj.fx2.model.Comment;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Integer id);
    List<Comment> findAllByFid(Integer fid);
    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}