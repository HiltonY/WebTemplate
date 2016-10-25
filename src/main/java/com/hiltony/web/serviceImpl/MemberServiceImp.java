package com.hiltony.web.serviceImpl;

import com.hiltony.web.mapper.MemberMapper;
import com.hiltony.web.model.Member;
import com.hiltony.web.service.MemberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by YX on 2016/10/23.
 */
@Service
public class MemberServiceImp implements MemberService {

    @Resource
    private MemberMapper memberMapper;

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
