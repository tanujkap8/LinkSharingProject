package com.daos;

import com.entities.Topic;
import com.entities.User;

/**
 * Created by tanuj on 7/20/17.
 */
public interface ResourceDao {
    boolean saveLinkUrl(User user, String linkUrl, String description, Topic topic);
    boolean saveDocUrl(User user, String docUrl, String description, Topic topic);
}
