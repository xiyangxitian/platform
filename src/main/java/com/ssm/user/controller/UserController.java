package com.ssm.user.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ssm.user.entity.UserInfo;
import com.ssm.user.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/showUser")
    public void select(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        long id = Long.parseLong(request.getParameter("id"));
        UserInfo userInfo = userService.selectUser(id);
        ObjectMapper mapper = new ObjectMapper();
        response.getWriter().write(mapper.writeValueAsString(userInfo));
        response.getWriter().close();
    }

    @RequestMapping("/add")
    public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response) {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        UserInfo userInfo = new UserInfo();
        userInfo.setEmail(email);
        userInfo.setUsername(username);
        userService.addUser(userInfo);

        return new ModelAndView("welcome");
    }

    @RequestMapping("/wel")
    public ModelAndView toWelcome(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("hello!");
        return new ModelAndView("/welcome");
    }

    @RequestMapping("/towel")
    public String toWelce(HttpServletRequest request, HttpServletResponse response) {
        return "/welcome";
    }

}
