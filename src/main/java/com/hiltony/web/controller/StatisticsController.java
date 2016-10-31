package com.hiltony.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by hzyangxin1 on 2016/9/16.
 */
@Controller
@RequestMapping("/statistics")
public class StatisticsController {

    @RequestMapping("/index")
    public String bootstrap(HttpServletRequest request, Model model){
        return "bootstrap";
    }

    @RequestMapping("/temp")
    public String temp(HttpServletRequest request, Model model){
        return "temp";
    }
}
