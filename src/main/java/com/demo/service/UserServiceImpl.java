package com.demo.service;

import com.demo.dao.UserMapper;
import com.demo.entity.User;
import org.apache.calcite.linq4j.Linq4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserServiceI {

  @Resource
  public UserMapper muserMapping;

  @Override
  public List<User> getUsers() {
    return this.muserMapping.getUsers();
  }

  @Override
  public User getUser(int id) {
    return this.muserMapping.getUser(id);
  }

  @Override
  public void Create(User user) {
    this.muserMapping.insert(user);
  }

  @Override
  public void Update(User user) {
    this.muserMapping.update(user);
  }

  @Override
  public void Delete(int id) {
    this.muserMapping.delete(id);
  }

  @Override
  public boolean isUserExist(User user) {
    List<User> users = this.getUsers();
    List<User> exitUsers = null;

    for (User clintUser : users) {
      if (clintUser.getUsername() == user.getUsername()) {
        exitUsers.add(clintUser);
      }
    }

    return exitUsers != null;
  }
}
