package com.aishang.shop10_back2.dao;

import com.aishang.shop10_back2.po.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IUserDao {
    /*
        根据用户名查询用户
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
