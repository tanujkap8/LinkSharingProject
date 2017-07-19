package com.controllers;

import com.entities.User;
import com.services.LoginService;
import com.services.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

@Controller
public class ViewController {
    private User user;
    private ModelAndView modelAndView;
    @Autowired
    private RegisterService registerService;
    @Autowired
    private LoginService loginService;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView gethomepage() {
        ModelAndView view = new ModelAndView("index");
        return view;
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public @ResponseBody ModelAndView getsave(@RequestParam("photo") MultipartFile fileUpload, @ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) throws IOException {

        HttpSession session = request.getSession();

        if (fileUpload != null) {
            if (fileUpload.getSize() > 0)

            {
                user.setPhoto(fileUpload.getBytes());
            } else {
                File file = new File("/home/tanuj/IdeasProjects/LinkSharing/src/main/webapp/WEB-INF/assets/images/dp.jpg");
                FileInputStream fis = new FileInputStream(file);
                byte b[] = new byte[(int) file.length()];
                fis.read(b);
                user.setPhoto(b);
            }
        }
            ModelAndView model = new ModelAndView();
            registerService.save(user);
            session.setAttribute("Userdetails", user);
            model.setViewName("UserHome");
            return model;
        }

        @RequestMapping(value = "/login", method = RequestMethod.POST)
        public @ResponseBody
        ModelAndView getlogin (@RequestParam("username") String username, @RequestParam("password") String
        password, HttpServletRequest request) throws Exception {

            HttpSession session = request.getSession();
            user = loginService.getUserByUsernameAndPassword(username, password);

            if (username.equals(user.getUsername())) {
                session.setAttribute("Userdetails", user);
                modelAndView = new ModelAndView();
                modelAndView.setViewName("UserHome");

            }
            return modelAndView;
        }


        @RequestMapping(value = "/getPhoto")
        public void getPhoto (HttpServletRequest request, HttpServletResponse response) throws IOException {
            HttpSession session = request.getSession();
            user = (User) session.getAttribute("Userdetails");
            System.out.println("in get photo user is " + user);
            byte[] arr = user.getPhoto();
            response.getOutputStream().write(arr);
        }

        @RequestMapping(value = "/userprofile", method = RequestMethod.GET)
        public ModelAndView getprofilepage () {
            ModelAndView view = new ModelAndView("Profile");
            return view;
        }
    }

