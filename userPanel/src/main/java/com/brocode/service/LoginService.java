package com.brocode.service;

import com.brocode.model.User;

public interface LoginService {
	User login(User user);

	User forgotPassword(User user);

	int checkOTP(User user);

	User newPassword(User user);

	int changePass(User user);
}
