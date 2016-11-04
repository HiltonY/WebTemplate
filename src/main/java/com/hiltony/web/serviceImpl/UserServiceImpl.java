package com.hiltony.web.serviceImpl;

import com.hiltony.web.mapper.UserInfoMapper;
import com.hiltony.web.model.UserInfo;
import com.hiltony.web.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.xml.registry.infomodel.User;
import java.util.List;

/**
 * Created by YX on 2016/9/11.
 */

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserInfoMapper userInfoMapper;

    public UserInfo getUser(UserInfo userInfo){
        return userInfoMapper.getUserInfo(userInfo);
    }
    public UserInfo getUserById(int id) {
        return userInfoMapper.selectByPrimaryKey(id);
    }

    public List<UserInfo> getUsers() {
        return null;
    }

    public int insert(UserInfo userInfo) {
        return 0;
    }
}
