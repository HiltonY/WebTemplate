package com.hiltony.web.controller;

import com.hiltony.web.model.UserInfo;
import com.hiltony.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


/**
 * Created by YX on 2016/9/16.
 */

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping("/login")
    @ResponseBody
    public String login(HttpServletRequest request, UserInfo user){

        try {
            UserInfo userInfo = userService.getUser(user);
            if (userInfo!=null && userInfo.getId()!=null)
                return "success";
            else
                return "fail";
        }
        catch (Exception e){
            e.printStackTrace();
            return "error";
        }


    }
    @RequestMapping("/showUser")
    public String toIndex(HttpServletRequest request, Model model){
        int userId = Integer.parseInt(request.getParameter("id"));
        UserInfo user = this.userService.getUserById(userId);
        model.addAttribute("user", user);
        return "showUser";

    }

    @RequestMapping("/getUserInfo")
    @ResponseBody
    public UserInfo getUserInfo(){
        UserInfo userInfo  = userService.getUserById(1);

        return userInfo;
    }

}

