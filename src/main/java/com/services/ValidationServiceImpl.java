package com.services;

import com.daos.ValidationDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by tanuj on 7/19/17.
 */
@Service
public class ValidationServiceImpl implements ValidationService {

    @Autowired
    ValidationDao validationDao;

    @Override
    public String validationOfUsername(String username) {
        return validationDao.validateUsername(username);
    }

    @Override
    public String validationOfEmail(String email){
        return validationDao.validateEmail(email);
    }

    @Override
    public String validationOfTopicName(String name){
        return validationDao.validateTopicName(name);
    }
}
