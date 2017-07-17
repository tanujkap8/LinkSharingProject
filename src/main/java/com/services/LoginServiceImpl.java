package com.services;

import com.daos.UserDao;
import com.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by tanuj on 7/13/17.
 */
@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private UserDao userDao;

    @Override
    public User getUserByUsernameAndPassword(String username, String password)throws Exception{
        return userDao.findUserByNameAndPassword(username,password);
    }
}
