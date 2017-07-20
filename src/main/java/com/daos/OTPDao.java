package com.daos;

import com.entities.OTPMapping;

/**
 * Created by tanuj on 7/19/17.
 */
public interface OTPDao {
    boolean save(OTPMapping otp);
    OTPMapping findByEmail(String email);
}
