package com.brocode.service;

import java.util.List;

import org.springframework.ui.Model;

import com.brocode.model.User;

public interface UserService {


	int deleteUser(long userId);

	List<User> getAll();

	User getById(int id);

}
