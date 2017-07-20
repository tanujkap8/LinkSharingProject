package com.services;

import com.entities.OTPMapping;

/**
 * Created by tanuj on 7/19/17.
 */
public interface OTPValidation {
    OTPMapping findOTPByEmail(String email);
}
