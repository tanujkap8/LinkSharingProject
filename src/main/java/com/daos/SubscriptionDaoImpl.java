package com.daos;

import com.entities.Subscription;
import com.entities.Topic;
import com.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * Created by tanuj on 7/19/17.
 */
@Repository
public class SubscriptionDaoImpl implements SubscriptionDao {

    private SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

    @Override
    public boolean subscribe(User user, Topic topic, String seriousness) {
        Subscription subscription = new Subscription();
        Subscription.Seriousness serious = Subscription.Seriousness.valueOf(seriousness);
        subscription.setSeriousness(serious);
        System.out.println();
        subscription.setDateCreated(new Date());
        subscription.setUser(user);
        subscription.setTopic(topic);
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(subscription);
        session.getTransaction().commit();
        session.close();
       // System.out.println("Successfully created " + subscription.toString());
        return true;
    }

  /*  @Override
    public Long getSubscriptions(User user) {
        Session session = sessionFactory.openSession();
        Query query= session.createQuery("select count(user.userid) from Subscription where user.userid=:userid");
        //System.out.println(query);
        System.out.println("inside subs dao impl");
        query.setParameter("userid",user.getId());
        Long result =(Long) query.uniqueResult();
        System.out.println("sub result is "+result);
        return result;
    }*/
}
