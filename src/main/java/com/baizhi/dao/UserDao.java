package com.baizhi.dao;

import com.baizhi.entity.User;

public interface UserDao {
    //登录
    User selectOne(User user);

    //注册
    void insert(User user);
}
