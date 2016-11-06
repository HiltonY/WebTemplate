package com.hiltony.web.model;

import java.util.Date;
import java.util.List;

/**
 * Created by hzyangxin1 on 2016/10/18.
 *
 */
public class MemberEventHistory {

    private Long memberId;
    private String memberName;
    private String title;
    private String eventDesc;
    private Date eventTime;
    private Integer eventType;//事件类型,1:通知，2:警告

    public Long getMemberId() {
        return memberId;
    }

    public void setMemberId(Long memberId) {
        this.memberId = memberId;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getEventDesc() {
        return eventDesc;
    }

    public void setEventDesc(String eventDesc) {
        this.eventDesc = eventDesc;
    }

    public Date getEventTime() {
        return eventTime;
    }

    public void setEventTime(Date eventTime) {
        this.eventTime = eventTime;
    }

    public Integer getEventType() {
        return eventType;
    }

    public void setEventType(Integer eventType) {
        this.eventType = eventType;
    }
}

