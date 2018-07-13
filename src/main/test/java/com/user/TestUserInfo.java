package com.user;

import com.ssm.user.dao.IUserDao;
import com.ssm.user.entity.UserInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class TestUserInfo {

    @Autowired
    private IUserDao dao;

    @Test
    public void testSelectUser() {
        long id = 1;
        UserInfo user = dao.selectUser(id);
        System.out.println("name:" + user.getUsername());
    }

    @Test
    public void testFindAll() {
        List<UserInfo> all = dao.findAll();
        System.out.println("all: " + all);
    }

}
