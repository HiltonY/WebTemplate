package com.hiltony.web.service;

import com.hiltony.web.model.Member;

import java.util.List;

/**
 * Created by YX on 2016/10/23.
 *
 */
public interface MemberService {

    Member getMemberById(Member member);

    List<Member> getMemberList(Member member);

    Member addMember(Member member);

    int updateMember(Member member);
}
