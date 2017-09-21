package com.demo.controller;

import com.demo.entity.User;
import com.demo.service.UserServiceI;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2017/9/12 0012.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    UserServiceI userService;

    @RequestMapping(value="/userList")
    public String listUser(Model model) {
        List<User> users = userService.getUsers();
        model.addAttribute("users", users);
        return "user/userList";
    }
}
