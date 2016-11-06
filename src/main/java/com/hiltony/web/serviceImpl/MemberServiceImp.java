package com.hiltony.web.serviceImpl;

import com.hiltony.web.mapper.MemberEventHistoryMapper;
import com.hiltony.web.mapper.MemberMapper;
import com.hiltony.web.model.Member;
import com.hiltony.web.model.MemberEventHistory;
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
public class MemberServiceImp implements MemberService {

    @Resource
    private MemberMapper memberMapper;

    @Resource
    private MemberEventHistoryMapper memberEventHistoryMapper;

    @Override
    public Member getMemberById(Member member) {
        return memberMapper.getMemberById(member);
    }

    @Override
    public List<Member> getMemberList(Member member) {
        try {
            return memberMapper.getMemberList(member);
        }
        catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Member addMember(Member member) {
        try{
            memberMapper.addMember(member);
            MemberEventHistory memberEventHistory = new MemberEventHistory();
            memberEventHistory.setMemberId(member.getMemberId());
            memberEventHistory.setTitle("欢迎新客户加入");
            memberEventHistory.setEventDesc("欢迎客户"+member.getMemberName()+"加入。");
            memberEventHistory.setEventTime(new Date());
            memberEventHistory.setEventType(1);
            memberEventHistoryMapper.addMemberEventHistory(memberEventHistory);
            return member;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public int updateMember(Member member) {
        return memberMapper.updateMember(member);
    }
}
