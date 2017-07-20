package com.controllers;

import com.entities.OTPMapping;
import com.services.EmailService;
import com.services.OTPValidation;
import com.services.UpdationService;
import com.services.ValidationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by tanuj on 7/19/17.
 */
@Controller
public class ValidationController {

    @Autowired
    ValidationService validationService;

    @RequestMapping(value="/validateUsername",method = RequestMethod.GET)
    public @ResponseBody
    String validateUsername(@RequestParam("username") String username)
    {
        return validationService.validationOfUsername(username);
    }

    @RequestMapping(value="/validateEmail",method = RequestMethod.GET)
    public @ResponseBody
    String validateEmail(@RequestParam("email") String email)
    {
        return  validationService.validationOfEmail(email);
    }

    @RequestMapping(value = "/validatetopic",method = RequestMethod.GET)
    public @ResponseBody
    String validateTopic(@RequestParam("name") String name )
    {
        return validationService.validationOfTopicName(name);
    }
}
