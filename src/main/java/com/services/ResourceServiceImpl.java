package com.services;

import com.daos.ResourceDao;
import com.entities.Topic;
import com.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by tanuj on 7/20/17.
 */
@Service
public class ResourceServiceImpl implements ResourceService {

    @Autowired
    ResourceDao resourceDao;

    @Override
    public boolean saveLinkUrlResource(User user, String linkUrl, String description, Topic topic) {
        return resourceDao.saveLinkUrl(user,linkUrl,description,topic);
    }

    @Override
    public boolean saveDocUrl(User user, String docUrl, String description, Topic topic) {
        return resourceDao.saveDocUrl(user,docUrl,description,topic);
    }
}
