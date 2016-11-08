package com.hiltony.web.controller;

import com.hiltony.web.model.Member;
import com.hiltony.web.model.MemberEventHistory;
import com.hiltony.web.model.UserInfo;
import com.hiltony.web.model.enmu.Gender;
import com.hiltony.web.service.MemberEventHistoryService;
import com.hiltony.web.service.MemberService;
import com.hiltony.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;


/**
 * Created by YX on 2016/9/16.
 *
 */

@Controller
@RequestMapping("/member")
public class MemberController {

    @Resource
    private UserService userService;

    @Resource
    private MemberService memberService;

    @Resource
    private MemberEventHistoryService memberEventHistoryService;

    @RequestMapping("/listMember")
    public String toIndex(Member member,HttpServletRequest request, Model model){
        List<Member> members = new ArrayList<Member>();

         members.addAll(memberService.getMemberList(member));
//        Member member = new Member();
//        member.setName("测试名称");
//        member.setGender(Gender.MAN.getDesc());
//        member.setAge(60);
//        member.setStatus(1);
//        members.add(member);
//        member = new Member();
//        member.setName("测试名称2");
//        member.setGender(Gender.MAN.getDesc());
//        member.setAge(60);
//        member.setStatus(2);
//        members.add(member);
        model.addAttribute("memberList", members);
        return "member";

    }

    @RequestMapping("/getMemberInfo")
    @ResponseBody
    public UserInfo getUserInfo(){
        UserInfo userInfo  = userService.getUserById(1);

        return userInfo;
    }

    @RequestMapping("/getMemberList")
    @ResponseBody
    public List<Member> getMemberList(Member member,HttpServletRequest request){
        return memberService.getMemberList(member);
    }

    @RequestMapping(value = "/addMember",method = RequestMethod.POST)
    @ResponseBody
    public String addMember(Member member ,HttpServletRequest request,Model model){

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(member.getBirthday());
        Calendar current = Calendar.getInstance();

        int age = current.get(Calendar.YEAR)-calendar.get(Calendar.YEAR);
        calendar.add(Calendar.YEAR,age);
        if (calendar.after(current)){
            age+=1;
        }
        member.setAge(age);
        member.setStatus(1);
        memberService.addMember(member);
        return "success";
    }

    @RequestMapping(value = "/updateMember",method = RequestMethod.POST)
    @ResponseBody
    public String updateMember(Member member ,HttpServletRequest request,Model model){

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(member.getBirthday());
        Calendar current = Calendar.getInstance();

        int age = current.get(Calendar.YEAR)-calendar.get(Calendar.YEAR) ;
        calendar.add(Calendar.YEAR,age);
        if (calendar.after(current)){
            age+=1;
        }
        member.setAge(age);

        memberService.updateMember(member);
        return "success";
    }

    @RequestMapping("/memberDetail")
    public String getMemberDetail(Member member,HttpServletRequest request, Model model){

        model.addAttribute("member", memberService.getMemberById(member));
        MemberEventHistory memberEventHistory = new MemberEventHistory();
        memberEventHistory.setMemberId(member.getMemberId());
        List<MemberEventHistory> memberEventHistoryList = memberEventHistoryService.getMemberEventHistoryList(memberEventHistory);
        TreeMap<String,List<MemberEventHistory>> eventMap = new TreeMap<String,List<MemberEventHistory>>();
        SimpleDateFormat sdf  = new SimpleDateFormat("YYYY-MM-DD");
        for (MemberEventHistory event:memberEventHistoryList){
            eventMap.putIfAbsent(sdf.format(event.getEventTime()), new ArrayList<>());
            eventMap.get(sdf.format(event.getEventTime())).add(event);
        }
        NavigableMap rmap = eventMap.descendingMap();

        model.addAttribute("memberEvent", memberEventHistoryService.getMemberEventHistoryList(memberEventHistory));

        return "member_detail";

    }

}

