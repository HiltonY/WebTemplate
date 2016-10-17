package com.hiltony.web.controller;

import com.hiltony.web.model.UserInfo;
import com.hiltony.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by YX on 2016/10/17.
 */
@Controller
@RequestMapping("/test")
public class IndexController {

    @Resource
    private UserService userService;

    @RequestMapping("/main")
    public String index(HttpServletRequest request, Model model){

        UserInfo userInfo  = userService.getUserById(1);
        model.addAttribute("item",userInfo);
        return "main";
    }
}
