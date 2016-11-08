package com.hiltony.web.model;

import java.util.Date;

/**
 * Created by YX on 2016/10/25.
 *
 */
public class Location {

    private Long memberId;
    private String memberName;
    private Integer floor;
    private Integer xPosition;
    private Integer yPosition;
    private Date date;
    private Integer upOrDown; //1 上楼 -1 下楼 0
    private Date sampleTime;//采样时间
    private Long stayTime;//停留时间，以分钟计数
    private Integer status;//采样状态1:正常，2:预警


    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public Long getStayTime() {
        return stayTime;
    }

    public void setStayTime(Long stayTime) {
        this.stayTime = stayTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getSampleTime() {
        return sampleTime;
    }

    public void setSampleTime(Date sampleTime) {
        this.sampleTime = sampleTime;
    }

    public Integer getUpOrDown() {
        return upOrDown;
    }

    public void setUpOrDown(Integer upOrDown) {
        this.upOrDown = upOrDown;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Long getMemberId() {
        return memberId;
    }

    public void setMemberId(Long memberId) {
        this.memberId = memberId;
    }

    public Integer getFloor() {
        return floor;
    }

    public void setFloor(Integer floor) {
        this.floor = floor;
    }

    public Integer getxPosition() {
        return xPosition;
    }

    public void setxPosition(Integer xPosition) {
        this.xPosition = xPosition;
    }

    public Integer getyPosition() {
        return yPosition;
    }

    public void setyPosition(Integer yPosition) {
        this.yPosition = yPosition;
    }
}
