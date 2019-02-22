package com.baizhi.service.impl;

import com.baizhi.dao.UserDao;
import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    //登录
    @Override
    public User login(User user) {
        return userDao.selectOne(user);
    }

    //注册
    @Override
    public void register(User user) {
        userDao.insert(user);
    }
}
