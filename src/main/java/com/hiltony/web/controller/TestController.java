package com.hiltony.web.controller;

import com.hiltony.web.model.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by hzyangxin1 on 2016/9/16.
 */
@Controller
@RequestMapping("/test")
public class TestController {

    @RequestMapping("/bootstrap")
    public String bootstrap(HttpServletRequest request, Model model){
        return "bootstrap";
    }
}
