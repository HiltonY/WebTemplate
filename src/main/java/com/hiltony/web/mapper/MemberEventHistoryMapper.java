package com.hiltony.web.mapper;

import com.hiltony.web.model.Member;
import com.hiltony.web.model.MemberEventHistory;

import java.util.List;

/**
 * Created by YX on 2016/10/23.
 *
 */
public interface MemberEventHistoryMapper {

    List<MemberEventHistory> getMemberEventHistoryList(Member member);

    MemberEventHistory addMemberEventHistory(MemberEventHistory memberEventHistory);
}
