package com.aishang.shop10_back2.service;


import com.aishang.shop10_back2.po.User;

public interface IUserService {
    /**
     * 根据用户名查询用户
     */
    User findUserByUsername(String username);

    /**
     * 添加用户
     */
    void addUser(User user);

    /**
     * 登录校验
     */
    User findUserForLogin(User user);

    /**
     * 修改用户
     */
    void uptadeUser(User user);
}
