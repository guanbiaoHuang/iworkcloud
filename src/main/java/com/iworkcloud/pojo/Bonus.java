package com.iworkcloud.pojo;


import java.io.Serializable;

public class Bonus implements Serializable {

  private String id;
  private String staff;
  private double bonus;
  private double subsidy;
  private java.sql.Timestamp time;


  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }


  public String getStaff() {
    return staff;
  }

  public void setStaff(String staff) {
    this.staff = staff;
  }


  public double getBonus() {
    return bonus;
  }

  public void setBonus(double bonus) {
    this.bonus = bonus;
  }


  public double getSubsidy() {
    return subsidy;
  }

  public void setSubsidy(double subsidy) {
    this.subsidy = subsidy;
  }


  public java.sql.Timestamp getTime() {
    return time;
  }

  public void setTime(java.sql.Timestamp time) {
    this.time = time;
  }

}
