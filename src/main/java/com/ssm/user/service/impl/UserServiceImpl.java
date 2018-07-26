package com.ssm.user.service.impl;

import com.ssm.user.dao.IUserDao;
import com.ssm.user.entity.UserInfo;
import com.ssm.user.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserDao userDao;

    @Override
    public UserInfo selectUser(long userId) {
        return this.userDao.selectUser(userId);
    }

    @Override
    public void addUser(UserInfo userInfo){
        userDao.add(userInfo);
    }

    @Override
    public UserInfo login(String name, String password) {
        return userDao.selectUserByNameAndPwd(name, password);
    }
}
