package com.hiltony.web.serviceImpl;

import com.hiltony.web.model.UserInfo;
import com.hiltony.web.service.UserService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by YX on 2016/9/11.
 */

@Service("userService")
public class UserServiceImpl implements UserService {


    public UserInfo getUserById(int id) {
        return null;
    }

    public List<UserInfo> getUsers() {
        return null;
    }

    public int insert(UserInfo userInfo) {
        return 0;
    }
}
