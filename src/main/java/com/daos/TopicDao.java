package com.daos;

import com.entities.Topic;

import java.util.List;

/**
 * Created by tanuj on 7/17/17.
 */
public interface TopicDao {
    boolean topicsave(Topic topic,String username);
    List<Topic> getAllPublicTopics(String query);
    Topic findTopicByname(String name);
}
