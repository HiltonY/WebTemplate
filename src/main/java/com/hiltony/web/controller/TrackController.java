package com.hiltony.web.controller;

import com.hiltony.web.model.Location;
import com.hiltony.web.model.Member;
import com.hiltony.web.model.Track;
import com.hiltony.web.service.MemberService;
import com.hiltony.web.service.TrackService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;


/**
 * Created by YX on 2016/9/16.
 *
 */

@Controller
@RequestMapping("/track")
public class TrackController {

    @Resource
    private TrackService trackService;

    @Resource
    private MemberService memberService;

    @RequestMapping("/history")
    public String getTrack(Member member,HttpServletRequest request, Model model){

        List<Member> memberList = memberService.getMemberList(new Member());
        Map<Integer,List<Location>> trackControllerList;
        Location location = new Location();
        if (memberList.size()!=0){
            if (member!=null && member.getMemberId()!=null){
                location.setMemberId(member.getMemberId());
                Member first = memberList.get(0);
                for(int i=0;i<memberList.size();i++){
                    Member m=memberList.get(i);
                    if (m.getMemberId().equals(first.getMemberId())){
                        memberList.set(0,m);
                        memberList.set(i,first);
                        break;
                    }
                }
            }
            if (member!=null && member.getMemberId()!=null){
                location.setMemberId(member.getMemberId());
            }
            else {
                location.setMemberId(memberList.get(0).getMemberId());
            }
            trackControllerList =trackService.getTrackListByMemberId(location);
            model.addAttribute("memberList",memberList);
            model.addAttribute("trackHistory", trackControllerList);
        }

        return "track/location_show";

    }


    @RequestMapping("/intime")
    public String getIntimeTrack(Member member,HttpServletRequest request, Model model){

        List<Member> memberList = memberService.getMemberList(new Member());
        Map<Integer,List<Location>> trackControllerList;
        Location location = new Location();
        if (memberList.size()!=0){
            trackControllerList =trackService.getIntimeTrackList(location);
            model.addAttribute("memberList",memberList);
            model.addAttribute("locationInTime", trackControllerList);
        }
        return "track/location_intime";

    }

}

