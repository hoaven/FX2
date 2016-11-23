package com.zhanwkj.fx2.model;

import java.io.Serializable;

public class SeeHouse
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private Integer id;
  private Integer uid;
  private Integer fx2id;
  private Integer rentid;
  private Integer ispay;
  private String yytime;
  private Integer seenum;
  private String seetime;
  private Integer paytype;
  private String seepaytype;
  private String comment;
  private Integer status;
  private String seestatus;

  public String getSeepaytype()
  {
    return this.seepaytype;
  }

  public void setSeepaytype(String seepaytype) {
    this.seepaytype = seepaytype;
  }

  public String getSeestatus() {
    return this.seestatus;
  }

  public void setSeestatus(String seestatus) {
    this.seestatus = seestatus;
  }

  public Integer getId() {
    return this.id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public Integer getUid() {
    return this.uid;
  }

  public void setUid(Integer uid) {
    this.uid = uid;
  }

  public Integer getFx2id() {
    return this.fx2id;
  }

  public void setFx2id(Integer fx2id) {
    this.fx2id = fx2id;
  }

  public Integer getRentid() {
    return this.rentid;
  }

  public void setRentid(Integer rentid) {
    this.rentid = rentid;
  }

  public Integer getIspay() {
    return this.ispay;
  }

  public void setIspay(Integer ispay) {
    this.ispay = ispay;
  }

  public String getYytime() {
    return this.yytime;
  }

  public void setYytime(String yytime) {
    this.yytime = (yytime == null ? null : yytime.trim());
  }

  public Integer getSeenum() {
    return this.seenum;
  }

  public void setSeenum(Integer seenum) {
    this.seenum = seenum;
  }

  public String getSeetime() {
    return this.seetime;
  }

  public void setSeetime(String seetime) {
    this.seetime = (seetime == null ? null : seetime.trim());
  }

  public Integer getPaytype() {
    return this.paytype;
  }

  public void setPaytype(Integer paytype) {
    this.paytype = paytype;
  }

  public String getComment() {
    return this.comment;
  }

  public void setComment(String comment) {
    this.comment = (comment == null ? null : comment.trim());
  }

  public Integer getStatus() {
    return this.status;
  }

  public void setStatus(Integer status) {
    this.status = status;
  }
  
  //添加，跟数据库没关系
  private String fansname;
  private String fx2name;
  private String rentname;

public String getFansname() {
	return fansname;
}

public void setFansname(String fansname) {
	this.fansname = fansname;
}

public String getFx2name() {
	return fx2name;
}

public void setFx2name(String fx2name) {
	this.fx2name = fx2name;
}

public String getRentname() {
	return rentname;
}

public void setRentname(String rentname) {
	this.rentname = rentname;
}
  
}