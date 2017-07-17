package com.services;

import com.entities.User;

/**
 * Created by tanuj on 7/13/17.
 */
public interface LoginService {
    User getUserByUsernameAndPassword(String username ,String password)throws Exception;
}
