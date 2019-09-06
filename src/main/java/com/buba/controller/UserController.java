package com.buba.controller;

import com.buba.pojo.User;
import com.buba.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService us;

    @RequestMapping("login")
    public String fun(String username, String password, HttpSession session) {
        User user = us.selUser(username, password);
        session.setAttribute("user", user);
        return "common/left";
    }

    @RequestMapping("tuichu")
    public String tuichu(HttpServletRequest request) {
        //清除掉登录时存的域
        request.getSession().removeAttribute("user");
        //返回到登录页面
        return "login";
    }


}
