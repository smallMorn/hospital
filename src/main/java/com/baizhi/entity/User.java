package com.baizhi.entity;

import java.util.Date;

public class User {
    private Integer id;
    private String username;
    private String password;
    private String realname;
    private int sex;
    private Date birth;
    private String mobile;
    private String email;
    //头像的路径
    private String pic;
    private Integer dept_id;


    public User() {
    }

    public User(Integer id, String username, String password, String realname, int sex, Date birth, String mobile, String email, String pic, Integer dept_id) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.realname = realname;
        this.sex = sex;
        this.birth = birth;
        this.mobile = mobile;
        this.email = email;
        this.pic = pic;
        this.dept_id = dept_id;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", realname='" + realname + '\'' +
                ", sex=" + sex +
                ", birth=" + birth +
                ", mobile='" + mobile + '\'' +
                ", email='" + email + '\'' +
                ", pic='" + pic + '\'' +
                ", dept_id=" + dept_id +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
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

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Integer getDept_id() {
        return dept_id;
    }

    public void setDept_id(Integer dept_id) {
        this.dept_id = dept_id;
    }
}
