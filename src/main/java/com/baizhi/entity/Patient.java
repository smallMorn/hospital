package com.baizhi.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.util.Date;

@TableName("t_patient")
public class Patient {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String name;
    private int sex;
    private Date birth;
    @TableField(value = "idcard")
    private String idCard;
    private String address;
    private String mobile;
    private int status;
    @TableField(value = "is_reg")
    private int isReg;

    @Override
    public String toString() {
        return "Patient{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                ", birth=" + birth +
                ", idCard='" + idCard + '\'' +
                ", address='" + address + '\'' +
                ", mobile='" + mobile + '\'' +
                ", status=" + status +
                ", isReg=" + isReg +
                '}';
    }

    public int getIsReg() {
        return isReg;
    }

    public void setIsReg(int isReg) {
        this.isReg = isReg;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Patient() {

    }
}
