package com.demo.controller;

import com.demo.entity.User;
import com.demo.service.UserServiceI;
import java.util.List;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

/**
 * Created by Administrator on 2017/9/21 0021.
 */
@RestController
@RequestMapping("api/accounts")
public class AccountController {

  @Resource
  UserServiceI userService;

  @RequestMapping(method = RequestMethod.GET)
  public ResponseEntity<List<User>> Users() {
    List<User> users = userService.getUsers();
    if (users.isEmpty()) {
      return new ResponseEntity<List<User>>(HttpStatus.NO_CONTENT);
    }
    return new ResponseEntity<List<User>>(users, HttpStatus.OK);
  }

  @RequestMapping(value = "/{id}", method = RequestMethod.GET)
  public ResponseEntity<User> User(@PathVariable("id") int id) {
    User user = userService.getUser(id);
    if (user == null) {
      return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
    }

    return new ResponseEntity<User>(user, HttpStatus.OK);
  }

  @RequestMapping(method = RequestMethod.POST,consumes = "application/json")
  public ResponseEntity<Void> createUser(@RequestBody User user,UriComponentsBuilder ucBuilder) {

    if (userService.isUserExist(user)) {
      return new ResponseEntity<Void>(HttpStatus.CONFLICT);
    }

    userService.Create(user);

    HttpHeaders headers = new HttpHeaders();
    headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(user.getId()).toUri());
    return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
  }


  @RequestMapping(method = RequestMethod.PUT)
  public ResponseEntity<User> updateUser(@RequestBody User user) {
    User currentUser = userService.getUser(user.getId());

    if (currentUser==null) {
      return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
    }

    currentUser.setUsername(user.getUsername());
    currentUser.setPasswrod(user.getPassword());

    userService.Update(currentUser);
    return new ResponseEntity<User>(currentUser, HttpStatus.OK);
  }

  @RequestMapping(value = "{id}", method = RequestMethod.DELETE)
  public ResponseEntity<User> deleteUser(@PathVariable("id") int id) {

    User user = userService.getUser(id);
    if (user == null) {
      return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
    }

    userService.Delete(id);
    return new ResponseEntity<User>(HttpStatus.NO_CONTENT);
  }
}
