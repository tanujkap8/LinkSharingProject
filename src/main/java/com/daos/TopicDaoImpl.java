package com.daos;

import com.entities.Topic;
import com.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

/**
 * Created by tanuj on 7/17/17.
 */
@Repository
public class TopicDaoImpl implements TopicDao {
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
        return true;
    }
}
