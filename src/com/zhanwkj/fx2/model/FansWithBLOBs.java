package com.zhanwkj.fx2.model;

import java.io.Serializable;

public class FansWithBLOBs extends Fans
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String historyfid;
  private String historyseeid;

  public String getHistoryfid()
  {
    return this.historyfid;
  }

  public void setHistoryfid(String historyfid) {
    this.historyfid = (historyfid == null ? null : historyfid.trim());
  }

  public String getHistoryseeid() {
    return this.historyseeid;
  }

  public void setHistoryseeid(String historyseeid) {
    this.historyseeid = (historyseeid == null ? null : historyseeid.trim());
  }
}