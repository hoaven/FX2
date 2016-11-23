package com.zhanwkj.fx2.utils;

import java.io.IOException;
import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 * MyBatis工具类
 * @author Chitry
 *
 */
public class MybatisUtil
{
  public static SqlSessionFactory createSqlSessionFactory()
  {
    SqlSessionFactory sqlSessionFactory = null;
    try {
      InputStream inputStream = Resources.getResourceAsStream("spring-mybatis.xml");

      sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
    } catch (IOException e) {
      e.printStackTrace();
    }
    return sqlSessionFactory;
  }

  public static SqlSession getSqlSession()
  {
    return createSqlSessionFactory().openSession();
  }

  public static SqlSession getSqlSession(boolean autoCommit)
  {
    return createSqlSessionFactory().openSession(autoCommit);
  }
}