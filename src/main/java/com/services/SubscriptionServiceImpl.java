package com.services;

import com.daos.SubscriptionDao;
import com.entities.Topic;
import com.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by tanuj on 7/19/17.
 */
@Service
public class SubscriptionServiceImpl implements SubscriptionService {
    @Autowired
    SubscriptionDao subscriptionDao;

    @Override
    public boolean subscribe(User user, Topic topic, String seriousness)
    { return subscriptionDao.subscribe(user,topic,seriousness); }

   /* @Override
    public Long getSubcriptionsOfUser(User user)
    { return subscriptionDao.getSubscriptions(user); }*/
}
