package com.daos;

import com.entities.Topic;
import com.entities.User;

/**
 * Created by tanuj on 7/19/17.
 */
public interface SubscriptionDao {
    boolean subscribe(User user, Topic topic, String seriousness);
   /* Long getSubscriptions(User user);*/
}
