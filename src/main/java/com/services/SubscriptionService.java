package com.services;

import com.entities.Topic;
import com.entities.User;

/**
 * Created by tanuj on 7/19/17.
 */
public interface SubscriptionService {
    boolean subscribe(User user, Topic topic, String seriousness);
   /* Long getSubcriptionsOfUser(User user);*/
}
