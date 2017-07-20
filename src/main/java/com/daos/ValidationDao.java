package com.daos;

/**
 * Created by tanuj on 7/19/17.
 */
public interface ValidationDao {

    String validateUsername(String username);
    String validateEmail(String email);
    String validateTopicName(String name);

}
