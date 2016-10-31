package com.hiltony.web.controller;

import com.hiltony.web.model.Location;
import com.hiltony.web.model.Member;
import com.hiltony.web.model.Track;
import com.hiltony.web.service.TrackService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


/**
 * Created by YX on 2016/9/16.
 *
 */

@Controller
@RequestMapping("/track")
public class TrackController {

    @Resource
    private TrackService trackService;

    @RequestMapping("/history")
    public String getTrack(Member member,HttpServletRequest request, Model model){

        Location location = new Location();
        if (member!=null && member.getMemberId()!=null){
            location.setMemberId(member.getMemberId());
        }
        else {
            location.setMemberId(1L);
        }
        List<Track> trackControllerList =trackService.getTrackListByMemberId(location);
        model.addAttribute("trackhistory", trackControllerList);
        return "location_show";

    }


    @RequestMapping("/intime")
    public String getIntimeTrack(Member member,HttpServletRequest request, Model model){
        Location location = new Location();
        location.setMemberId(member.getMemberId());
        List<Track> trackControllerList =trackService.getIntimeTrackList(location);
        model.addAttribute("trackhistory", trackControllerList);
        return "location_show";

    }

}

