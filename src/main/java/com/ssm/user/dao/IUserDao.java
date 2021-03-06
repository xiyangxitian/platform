package com.ssm.user.dao;

import com.ssm.user.entity.UserInfo;

import java.util.List;


public interface IUserDao {

    UserInfo selectUser(long id);

    UserInfo selectUserByNameAndPwd(String name,String pwd);

    void add(UserInfo info);

    List<UserInfo> findAll();
}
