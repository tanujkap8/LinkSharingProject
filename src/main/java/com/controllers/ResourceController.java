package com.controllers;

import com.entities.Topic;
import com.entities.User;
import com.services.ResourceService;
import com.services.SubscriptionService;
import com.services.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Created by tanuj on 7/20/17.
 */
@Controller
public class ResourceController {
    @Autowired
    SubscriptionService subscriptionService;

    @Autowired
    ResourceService resourceService;

    @Autowired
    TopicService topicService;

    @RequestMapping(value = "/createLinkResource", method = RequestMethod.POST)
    public @ResponseBody
    void createLinkResource(@RequestParam("linkUrl") String linkUrl, @RequestParam("description") String description, @RequestParam("topic") String name, HttpServletRequest request) {

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("Userdetails");
        Topic topic = topicService.findByname(name);
        resourceService.saveLinkUrlResource(user,linkUrl,description,topic);
    }

    @RequestMapping(value = "/createDocumentResource", method = RequestMethod.POST)
    public @ResponseBody
    void createDocResource(@RequestParam("docUrl") MultipartFile docUrl, @RequestParam("description") String description, @RequestParam("topic") String name, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("Userdetails");
        if (docUrl != null && docUrl.getSize()>0) {
            byte[] bytes = new byte[0];
            try {
                bytes = docUrl.getBytes();
                String path = "/home/tanuj/IdeaProjects/LinkSharing/src/main/webapp/WEB-INF/views/assets/"
                        + user.getUsername() + docUrl.getOriginalFilename();
                File serverFile = new File(path);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                Topic topic = topicService.findByname(name);
                resourceService.saveDocUrl(user, path, description, topic);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
