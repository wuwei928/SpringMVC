package com.hollysys.dao;

import com.hollysys.entity.User;

import java.util.List;

/**
 * Created by Administrator on 2017/9/12 0012.
 */
public interface UserMapper {
    List<User> getUsers();

    User getUser(int id);

    int insert(User user);

    int update(User user);

    int delete(int id);
}
