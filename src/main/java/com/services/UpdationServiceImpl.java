package com.services;

import com.daos.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by tanuj on 7/19/17.
 */
@Service
public class UpdationServiceImpl implements UpdationService {

    @Autowired
    UserDao userDao;

    @Override
    public boolean updatePassword(String email, String password) { return userDao.updatePassword(email,password); }
}
