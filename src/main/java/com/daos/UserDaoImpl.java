package com.daos;

import com.entities.Topic;
import com.entities.User;
import com.services.TopicService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.transaction.Transactional;
import java.io.File;
import java.io.FileInputStream;

/**
 * Created by tanuj on 7/12/17.
 */
@Repository
@Transactional
public class UserDaoImpl implements UserDao {

    private SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

    public boolean save(User user) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
        session.close();
        return true;
    }

    @Override
    public User findUserByNameAndPassword(String username,String password) throws Exception {

        String field;
        if(username.matches("/([a-zA-Z0-9]+)([\\_\\.\\-{1}])?([a-zA-Z0-9]+)\\@([a-zA-Z0-9]+)([\\.])([a-zA-Z\\.]+)/g"))
        {
            field = "email";
        }
        else {
            field = "username";
        }
        Query query = sessionFactory.openSession().
                createQuery("from User where "+field+" =:username and password=:password ");
        query.setParameter("username",username);
        query.setParameter("password",password);
        User user =(User) query.uniqueResult();
        return user;

    }

    @Override
    public User findByID(Integer id) {
        return null;
    }

    @Override
    public User findByEmail(String email) {
        Session session = sessionFactory.openSession();
        Query query= session.createQuery("from User where email=:email");
        //System.out.println(query);
        query.setParameter("email", email);
        User user = (User) query.uniqueResult();
        session.close();
        return user;
    }

    @Override
    public boolean updatePassword(String email, String password) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query= session.createQuery("update User set password=:password where email=:email");
        //System.out.println("update pass"+ query);
        query.setParameter("password", password);
        query.setParameter("email", email);
        query.executeUpdate();
        System.out.println("DELETING NOW...");
        query = session.createQuery("delete from OTPMapping where email=:email");
        query.setParameter("email",email);
        query.executeUpdate();
        session.getTransaction().commit();
        //System.out.println("working 2");
        return true;
    }
}

