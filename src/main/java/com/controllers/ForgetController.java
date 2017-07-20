package com.controllers;

import com.entities.OTPMapping;
import com.services.EmailService;
import com.services.OTPValidation;
import com.services.UpdationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by tanuj on 7/18/17.
 */
@Controller
public class ForgetController {


    @Autowired
    private EmailService emailService;

    @Autowired
    private OTPValidation otpValidation;

    @Autowired
    private UpdationService updationService;

    private ModelAndView view;
    private OTPMapping otpMapping;



    @RequestMapping(value = "/forgetpass", method = RequestMethod.GET)
    public ModelAndView getforgetpage() {
        ModelAndView view = new ModelAndView("forgetpassword");
        return view;
    }

    @RequestMapping(value = "/sendOTP", method = RequestMethod.POST)
    public @ResponseBody
    ModelAndView sendOTP(@RequestParam("email") String email, HttpServletRequest request){

        if(emailService.sendOTPToUser(email)){
            view = new ModelAndView();
            view.setViewName("forgetpassword");
        }
        return view;
    }
    @RequestMapping(value = "/forgotpasswordform", method = RequestMethod.POST)
    public @ResponseBody ModelAndView updatePassword(@RequestParam("email") String email, @RequestParam("otp") String otp,@RequestParam("password") String password,HttpServletRequest request){

        System.out.println("inside update password");
        otpMapping = otpValidation.findOTPByEmail(email);
        int OTP = Integer.parseInt(otp);
        System.out.println("otp code "+otpMapping);
        if(OTP == otpMapping.getOtp()){
            if(updationService.updatePassword(email,password)){
                view = new ModelAndView();
                view.setViewName("index");
            }

        }
        return view;

    }
}
