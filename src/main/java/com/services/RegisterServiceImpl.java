package com.services;

import com.daos.UserDao;
import com.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by tanuj on 7/12/17.
 */
@Service
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    private UserDao userDao;

    @Override
    public boolean save(User user)
    {
        return userDao.save(user);
    }
}
