package com.hiltony.web.service;

import com.hiltony.web.model.Member;
import com.hiltony.web.model.MemberEventHistory;

import java.util.List;

/**
 * Created by YX on 2016/10/23.
 *
 */
public interface MemberEventHistoryService {


    List<MemberEventHistory> getMemberEventHistoryList(MemberEventHistory member);


}
