package com.services;

import com.entities.Topic;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by tanuj on 7/17/17.
 */
public interface TopicService {

boolean topicsave(Topic topic, HttpServletRequest request);
}
