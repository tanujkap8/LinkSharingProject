package com.daos;

import com.entities.Topic;
import com.entities.User;
import com.services.SubscriptionService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.beans.Visibility;
import java.util.List;

/**
 * Created by tanuj on 7/17/17.
 */
@Repository
public class TopicDaoImpl implements TopicDao {

    @Autowired
    SubscriptionService subscriptionService;



    private SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

    public boolean topicsave(Topic topic,String username) {
        Session session = sessionFactory.openSession();
        String queryString = "From User where username = :username";
        Query query = session.createQuery(queryString);
        query.setParameter("username",username);
        User user = (User)query.uniqueResult();
        topic.setCreatedBy(user);
        session.beginTransaction();
        session.save(topic);
        session.getTransaction().commit();
        session.close();
        subscriptionService.subscribe(user,topic,"VerySerious");
        return true;
    }
    public Topic findTopicByname(String name){
        Session session = sessionFactory.openSession();
        Query query= session.createQuery("from Topic where name=:name");
        //System.out.println(query);
        query.setParameter("name", name);
        Topic topic = (Topic) query.uniqueResult();
        session.close();
        return topic;
    }

    public List<Topic> getAllPublicTopics(String query){
        Topic topic = new Topic();
        Topic.Visibility visibility = Topic.Visibility.valueOf("PUBLIC");
        Session session = sessionFactory.openSession();
        Query query1= session.createQuery("SELECT name from Topic where name like :name and visibility= :visibility");
        query1.setParameter("name",query+"%");
        query1.setParameter("visibility",visibility);
        List<Topic> topicsList = query1.list();
        session.close();
        return topicsList;
    }
}
