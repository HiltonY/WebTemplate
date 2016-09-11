package com.hiltony.web.mapper;

import com.hiltony.web.model.UserInfo;

import java.util.List;

/**
 * Created by YX on 2016/9/11.
 */
public interface UserInfoMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(UserInfo record);

    int insertSelective(UserInfo record);

    UserInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserInfo record);

    int updateByPrimaryKey(UserInfo record);

    List<UserInfo> selectAll();
}
