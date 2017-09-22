package com.demo.service;

import com.demo.entity.User;

import java.util.List;

/**
 * Created by Administrator on 2017/9/12 0012.
 */
public interface UserServiceI {

  List<User> getUsers();

  User getUser(int id);

  void Create(User user);

  void Update(User user);

  void Delete(int id);

  boolean isUserExist(User user);
}
