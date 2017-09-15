package com.hollysys.controller;

import com.hollysys.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.hollysys.service.UserServiceI;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2017/9/12 0012.
 */
@Controller
@RequestMapping("/userController")
public class UserController {
    private UserServiceI userService;

//    public UserServiceI GetUserService() {
//        return this.userService;
//    }
//
//    @Autowired
//    public void SetUserService(UserServiceI userService) {
//        this.userService = userService;
//    }

    @Autowired
    public UserController(UserServiceI userService) {
        this.userService = userService;
    }
    @RequestMapping(value="/listUser")
    public String listUser(HttpServletRequest request) {

        List<User> list = userService.getUsers();
        request.setAttribute("userlist", list);
        return "listUser";
    }

}
