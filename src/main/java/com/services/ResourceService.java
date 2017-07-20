package com.services;

import com.entities.Topic;
import com.entities.User;

/**
 * Created by tanuj on 7/20/17.
 */
public interface ResourceService {
    boolean saveLinkUrlResource(User user, String linkUrl, String description, Topic topic);
    boolean saveDocUrl(User user, String docUrl, String description, Topic topic);
}
