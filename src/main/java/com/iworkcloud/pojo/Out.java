package com.iworkcloud.pojo;


import java.io.Serializable;

public class Out implements Serializable {

  private long id;
  private String staff;
  private java.sql.Date dateStart;
  private java.sql.Date dateEnd;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getStaff() {
    return staff;
  }

  public void setStaff(String staff) {
    this.staff = staff;
  }


  public java.sql.Date getDateStart() {
    return dateStart;
  }

  public void setDateStart(java.sql.Date dateStart) {
    this.dateStart = dateStart;
  }


  public java.sql.Date getDateEnd() {
    return dateEnd;
  }

  public void setDateEnd(java.sql.Date dateEnd) {
    this.dateEnd = dateEnd;
  }

}