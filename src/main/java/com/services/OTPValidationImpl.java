package com.services;

import com.daos.OTPDao;
import com.entities.OTPMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by tanuj on 7/19/17.
 */
@Service
public class OTPValidationImpl implements OTPValidation{
    @Autowired
    private OTPDao otpDao;

    @Override
    public OTPMapping findOTPByEmail(String email) { return otpDao.findByEmail(email); }
}
