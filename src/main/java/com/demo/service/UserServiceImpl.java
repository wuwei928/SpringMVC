package com.demo.service;

import com.demo.dao.UserMapper;
import com.demo.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserServiceI {

    @Resource
    public UserMapper muserMapping;
    
    @Override
    public List<User> getUsers() {
      return   this.muserMapping.getUsers();
    }
}
