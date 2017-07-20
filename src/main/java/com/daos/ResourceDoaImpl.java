package com.daos;

import com.entities.Resource;
import com.entities.Topic;
import com.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * Created by tanuj on 7/20/17.
 */
@Repository
public class ResourceDoaImpl implements ResourceDao {


    private SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
    private Resource resource = new Resource();

    @Override
    public boolean saveLinkUrl(User user, String linkUrl, String description, Topic topic) {
        Resource.ResourceType resourceType = Resource.ResourceType.valueOf("LinkResource");
        resource.setCreatedBy(user);
        resource.setDateCreated(new Date());
        resource.setDescription(description);
        resource.setResourceType(resourceType);
        resource.setLinkUrl(linkUrl);
        resource.setTopic(topic);
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(resource);
        session.getTransaction().commit();
        session.close();
        return true;
    }

    @Override
    public boolean saveDocUrl(User user, String docUrl, String description, Topic topic) {
        Resource.ResourceType resourceType = Resource.ResourceType.valueOf("DocumentResource");
        resource.setCreatedBy(user);
        resource.setDateCreated(new Date());
        resource.setDescription(description);
        resource.setResourceType(resourceType);
        resource.setDocUrl(docUrl);
        resource.setTopic(topic);
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(resource);
        session.getTransaction().commit();
        session.close();
        return true;
    }
}

