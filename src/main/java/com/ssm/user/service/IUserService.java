package com.ssm.user.service;

import com.ssm.user.entity.UserInfo;

public interface IUserService {
    UserInfo selectUser(long userId);

    void addUser(UserInfo userInfo);

    UserInfo login(String name,String password);
}
