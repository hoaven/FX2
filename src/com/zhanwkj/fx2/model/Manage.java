package com.zhanwkj.fx2.model;

import java.io.Serializable;

public class Manage
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private Integer id;
  private String username;
  private String password;
  private Integer roll;
  
  

  public Integer getRoll() {
	return roll;
}

public void setRoll(Integer roll) {
	this.roll = roll;
}

public Integer getId()
  {
    return this.id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getUsername() {
    return this.username;
  }

  public void setUsername(String username) {
    this.username = (username == null ? null : username.trim());
  }

  public String getPassword() {
    return this.password;
  }

  public void setPassword(String password) {
    this.password = (password == null ? null : password.trim());
  }
}