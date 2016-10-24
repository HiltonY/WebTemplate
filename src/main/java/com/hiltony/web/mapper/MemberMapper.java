package com.hiltony.web.mapper;

import com.hiltony.web.model.Member;

import java.util.List;

/**
 * Created by YX on 2016/10/23.
 *
 */
public interface MemberMapper {

    Member getMemberById(Member member);

    List<Member> getMemberList(Member member);

    Member addMember(Member member);

    int updateMember(Member member);
}
