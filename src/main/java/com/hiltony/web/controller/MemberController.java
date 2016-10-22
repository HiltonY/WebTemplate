package com.hiltony.web.controller;

import com.hiltony.web.model.Member;
import com.hiltony.web.model.UserInfo;
import com.hiltony.web.model.enmu.Gender;
import com.hiltony.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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

    @RequestMapping("/listMember")
    public String toIndex(HttpServletRequest request, Model model){
        Member member = new Member();
        member.setName("测试名称");
        member.setGender(Gender.MAN.getDesc());
        member.setAge(60);
        member.setStatus(1);
        List<Member> members = new ArrayList<Member>();
        members.add(member);
        member = new Member();
        member.setName("测试名称2");
        member.setGender(Gender.MAN.getDesc());
        member.setAge(60);
        member.setStatus(2);
        members.add(member);
        model.addAttribute("memberList", members);
        return "member";

    }

    @RequestMapping("/getMemberInfo")
    @ResponseBody
    public UserInfo getUserInfo(){
        UserInfo userInfo  = userService.getUserById(1);

        return userInfo;
    }

}

