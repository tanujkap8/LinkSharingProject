package com.daos;

import com.entities.Topic;

/**
 * Created by tanuj on 7/17/17.
 */
public interface TopicDao {
    boolean topicsave(Topic topic,String username);
}
