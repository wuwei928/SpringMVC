package com.hollysys.service;

import com.hollysys.dao.UserMapper;
import com.hollysys.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/9/12 0012.
 */
@Service("userService")
public class UserServiceImpl implements UserServiceI {

    private UserMapper userMapping;

    public UserMapper getUserMapping() {
        return this.userMapping;
    }

    public void setUserMapping(UserMapper userMapping){
        this.userMapping=userMapping;
    }

    public List<User> getUsers() {
      return   this.userMapping.getUsers();
    }

    public User getUser(int id) {
        return this.userMapping.getUser(id);
    }

    public int insert(User user) {
        return  this.userMapping.insert(user);
    }

    public int update(User user) {
        return this.userMapping.update(user);
    }

    public int delete(int id) {
        return this.userMapping.delete(id);
    }
}
