package com.brocode.service;

import com.brocode.model.Admin;

public interface LoginService {
	public Admin login(Admin admin);

	Admin forgotPassword(Admin admin);

	public Admin changePass(Admin admin);
}
