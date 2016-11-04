package com.hiltony.web.service;

import com.hiltony.web.model.UserInfo;

import java.util.List;

/**
 * Created by YX on 2016/9/11.
 */
public interface UserService {

    UserInfo getUser(UserInfo userInfo);

    UserInfo getUserById(int id);

    List<UserInfo> getUsers();

    int insert(UserInfo userInfo);

}
