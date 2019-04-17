package com.aishang.shop10_back2.service.impl;


import com.aishang.shop10_back2.dao.IUserDao;
import com.aishang.shop10_back2.po.User;
import com.aishang.shop10_back2.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService implements IUserService {

    @Resource
    private IUserDao userDao;

    /**
     * 根据用户名查询用户
     */
    @Override
    public User findUserByUsername(String username) {
        return userDao.findUserByUsername(username);
    }

    /**
     * 添加用户
     */
    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    /**
     * 登录校验
     */
    public User findUserForLogin(User user) {
       return userDao.findUserForLogin(user);
    }

    @Override
    public void uptadeUser(User user) {
         userDao.uptadeUser(user);
    }
}
