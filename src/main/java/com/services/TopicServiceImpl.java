package com.services;

import com.daos.TopicDao;
import com.entities.Topic;
import com.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by tanuj on 7/17/17.
 */
@Service
public class TopicServiceImpl implements TopicService {

@Autowired
private TopicDao topicDao;

    @Override
    public boolean topicsave(Topic topic, HttpServletRequest request) {
        User user = (User)request.getSession().getAttribute("Userdetails");

        topicDao.topicsave(topic,user.getUsername());
    return true;
    }
}
