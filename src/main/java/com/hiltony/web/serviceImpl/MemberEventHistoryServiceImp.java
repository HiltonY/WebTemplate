package com.hiltony.web.serviceImpl;

import com.hiltony.web.mapper.MemberEventHistoryMapper;
import com.hiltony.web.mapper.MemberMapper;
import com.hiltony.web.model.Member;
import com.hiltony.web.model.MemberEventHistory;
import com.hiltony.web.service.MemberEventHistoryService;
import com.hiltony.web.service.MemberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by YX on 2016/10/23.
 *
 */
@Service
public class MemberEventHistoryServiceImp implements MemberEventHistoryService {

    @Resource
    private MemberEventHistoryMapper memberEventHistoryMapper;


    @Override
    public List<MemberEventHistory> getMemberEventHistoryList(MemberEventHistory memberEventHistory) {
        return memberEventHistoryMapper.getMemberEventHistoryList(memberEventHistory);
    }
}
