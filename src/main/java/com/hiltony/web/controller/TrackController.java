package com.hiltony.web.controller;

import com.hiltony.web.model.Location;
import com.hiltony.web.model.Member;
import com.hiltony.web.model.Track;
import com.hiltony.web.model.UserInfo;
import com.hiltony.web.service.MemberService;
import com.hiltony.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;


/**
 * Created by YX on 2016/9/16.
 *
 */

@Controller
@RequestMapping("/track")
public class TrackController {

    @Resource
    private UserService userService;

    @Resource
    private MemberService memberService;

    @RequestMapping("/history")
    public String getTrack(Member member,HttpServletRequest request, Model model){
        List<Track> trackControllerList = new ArrayList<>();
        Track track1 = new Track();
        track1.setFloor(1);
        List<Location> locationList1 = new ArrayList<>();
        Location location11  = new Location();
        location11.setxPosition(100);
        location11.setyPosition(200);
        trackControllerList.add(track1);
        model.addAttribute("trackhistory", trackControllerList);
        return "location_show";

    }

}

