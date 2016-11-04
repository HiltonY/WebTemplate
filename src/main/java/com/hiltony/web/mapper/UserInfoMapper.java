package com.hiltony.web.mapper;

import com.hiltony.web.model.UserInfo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by YX on 2016/9/11.
 */

public interface UserInfoMapper {

    UserInfo getUserInfo(UserInfo userInfo);

    int deleteByPrimaryKey(Integer id);

    int insert(UserInfo record);

    int insertSelective(UserInfo record);

    UserInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserInfo record);

    int updateByPrimaryKey(UserInfo record);

    List<UserInfo> selectAll();
}
