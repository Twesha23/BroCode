package com.brocode.serviceimpl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import com.brocode.dao.UserDao;
import com.brocode.model.User;
import com.brocode.service.UserService;
import com.brocode.util.FileUtils;
import com.brocode.util.Mailer;
import com.brocode.util.PasswordEncode;
import com.brocode.util.RandomString;

@Service("userService")
@Transactional
@SessionAttributes("user")
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userDao;
	
	@Autowired
	HttpSession session;

	@Override
	public int deleteUser(long userId) {
		User user = userDao.getById(User.class, userId);
		if(user!=null)
		{
			user.setIsDeleted(1);
			userDao.updateObject(user);
		}
		return 0;
	}

	@Override
	public List<User> getAll() {
		List<User> userList = userDao.getActive();
		return userList;
	}

	@Override
	public User getById(int id) {
		return userDao.getById(User.class, id);
	}
}
