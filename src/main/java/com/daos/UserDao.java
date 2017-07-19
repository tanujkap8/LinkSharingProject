package com.daos;

import com.entities.Topic;
import com.entities.User;

/**
 * Created by tanuj on 7/12/17.
 */
public interface UserDao {

    boolean save(User user);

    User findUserByNameAndPassword(String username,String password)throws Exception;
    User findByID(Integer id);

    User findByEmail(String email);
    boolean updatePassword(String email,String password);
}
