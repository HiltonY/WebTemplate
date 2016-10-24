package com.hiltony.web.controller;

import com.hiltony.web.model.Member;
import com.hiltony.web.model.UserInfo;
import com.hiltony.web.model.enmu.Gender;
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
import java.util.GregorianCalendar;
import java.util.List;


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

    @RequestMapping("/listMember")
    public String toIndex(Member member,HttpServletRequest request, Model model){
        List<Member> members = new ArrayList<Member>();

        members.addAll(memberService.getMemberList(member));
//        Member member = new Member();
//        member.setName("测试名称");
//        member.setGender(Gender.MAN.getDesc());
//        member.setAge(60);
//        member.setStatus(1);
//
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

    @RequestMapping(value = "/addMember",method = RequestMethod.POST)
    @ResponseBody
    public String addMember(Member member ,HttpServletRequest request,Model model){

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(member.getBirthday());
        Calendar current = Calendar.getInstance();

        int age = calendar.get(Calendar.YEAR) - current.get(Calendar.YEAR);
        calendar.add(Calendar.YEAR,age);
        if (calendar.after(current)){
            age+=1;
        }
        member.setAge(age);
        member.setStatus(1);
        memberService.addMember(member);
        return "success";
    }

    @RequestMapping("/memberDetail")
    public String getMemberDetail(Member member,HttpServletRequest request, Model model){

//        Member member1 = new Member();
//        member1.setMemberName("测试名称");
//        member1.setGender(Gender.MAN.getDesc());
//        member1.setAge(60);
//        member1.setStatus(1);
        model.addAttribute("member", memberService.getMemberById(member));
        return "member_detail";

    }

}

