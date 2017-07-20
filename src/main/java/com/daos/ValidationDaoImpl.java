package com.daos;

import com.entities.Topic;
import com.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;



/**
 * Created by tanuj on 7/19/17.
 */
@Repository
public class ValidationDaoImpl implements ValidationDao {

    private SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();


    @Override
    public String validateUsername(String username) {
        Session session = sessionFactory.openSession();

        String queryString = "From User where username = :username";
        Query query = session.createQuery(queryString);
        query.setParameter("username",username);
        User user =(User)query.uniqueResult();
        if(user==null)
        {
            return true+"";
        }
        else
        {
            return false+"";
        }
    }

    @Override
    public String validateEmail(String email) {
        Session session = sessionFactory.openSession();

        String queryString = "From User where email = :email";
        Query query = session.createQuery(queryString);
        query.setParameter("email",email);
        User user =(User)query.uniqueResult();
        if(user==null)
        {
            return true+"";
        }
        else
        {
            return false+"";
        }
    }

    @Override
    public String validateTopicName(String name) {
        Session session = sessionFactory.openSession();

        String queryString = "From Topic where name = :name";
        Query query = session.createQuery(queryString);
        query.setParameter("name",name);
        Topic topic =(Topic) query.uniqueResult();
        if(topic==null)
        {
            return true+"";
        }
        else
        {
            return false+"";
        }
    }
}
