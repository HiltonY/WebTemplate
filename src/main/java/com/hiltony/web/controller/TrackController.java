package com.hiltony.web.controller;

import com.hiltony.web.model.Location;
import com.hiltony.web.model.Member;
import com.hiltony.web.model.Track;
import com.hiltony.web.model.UserInfo;
import com.hiltony.web.service.MemberService;
import com.hiltony.web.service.TrackService;
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
    private TrackService trackService;

    @RequestMapping("/history")
    public String getTrack(Member member,HttpServletRequest request, Model model){
        Location location = new Location();
        location.setMemberId(1);
        List<Track> trackControllerList =trackService.getTrackListByMemberId(location);
        model.addAttribute("trackhistory", trackControllerList);
        return "location_show";

    }

}

