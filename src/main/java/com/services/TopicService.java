package com.services;

import com.entities.Topic;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by tanuj on 7/17/17.
 */
public interface TopicService {

boolean topicsave(Topic topic, HttpServletRequest request);
    List<Topic> getTopicList(String query);
    Topic findByname(String name);
}
