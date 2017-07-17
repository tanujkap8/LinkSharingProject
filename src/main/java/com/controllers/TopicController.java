package com.controllers;

import com.entities.Topic;
import com.entities.User;
import com.services.RegisterService;
import com.services.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by tanuj on 7/15/17.
 */
@Controller
public class TopicController {
    @Autowired
    private TopicService topicService;
    @RequestMapping(value = "/addtopic", method = RequestMethod.POST)

    ModelAndView gettopicsave(@ModelAttribute Topic topic, BindingResult bindingResult, HttpServletRequest request) {

        ModelAndView model = new ModelAndView();
        topicService.topicsave(topic,request);
        model.setViewName("UserHome");
        return model;
    }
}

