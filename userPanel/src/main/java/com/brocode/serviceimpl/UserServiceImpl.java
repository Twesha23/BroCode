package com.brocode.serviceimpl;

import java.io.File;
import java.sql.Date;
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
import com.brocode.dao.AreaDao;
import com.brocode.model.Area;
import com.brocode.util.FTPUtils;

@Service("userservice")
@Transactional
@SessionAttributes("user")
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;

	@Autowired
	HttpSession session;

	@Autowired
	AreaDao areadao;

	// @Autowired
	// private ServletContext context;

	// String absolutePath1 = "";_
	
	
	private static String UPLOADED_FOLDER1 = "D://Java Tools//apache-tomcat-8.5.66//webapps//userPanel//resources//images//profilePicture"
					+ File.separator;

	public int addUser(User user, MultipartFile file) {
		// String otp = "";
		String newPP = FileUtils.getFileName(file.getOriginalFilename());
		user.setProfilePicture(newPP);
		String password = user.getPassword();
		User ud = (User) session.getAttribute("user");

		// User ad=(User)session.getAttribute("user");
		user.setIsActive(1);
		// user.setCreatedBy(ad.getUserId());
		user.setCreatedDate(new Date(System.currentTimeMillis()));
		// user.setModifiedBy(ad.getUserId());
		user.setModifiedDate(new Date(System.currentTimeMillis()));
		// String password = RandomString.getAlphaNumericString(8);

		int result = userDao.emailCheck(user);
		if (result != 0) {
			return 1;
		}

		if (user != null) {
			if (user.getPassword().equals(user.getCpassword())) {
				user.setPassword(PasswordEncode.passwordEncode(user.getCpassword()));
			} else
				return 2;
			
		}

		User a = userDao.saveObject(user);

		
		if (a != null) {
			FileUtils.uploadImageFile(file, UPLOADED_FOLDER1 + newPP);

			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1 + newPP, newPP);
		}

		return 0;
	}

	public int editUser(User user) {
		userDao.updateObject(user);

		return 0;
	}

	public int deleteUser(long userId) {
		User user = userDao.getById(User.class, userId);
		if (user != null) {
			user.setIsDeleted(1);
			userDao.updateObject(user);
		}
		return 0;
	}

	public long updateUser(User user, MultipartFile file) {
		User oldad = userDao.getById(User.class, user.getUserId());
		User ad = (User) session.getAttribute("user");
		// user.setModifiedBy(ad.getUserId());
		user.setModifiedDate(new Date(System.currentTimeMillis()));
		if (file.isEmpty()) {
			user.setProfilePicture(oldad.getProfilePicture());
		} else if (!oldad.getProfilePicture().equals(file.getOriginalFilename())) {
			String newPP = FileUtils.getFileName(file.getOriginalFilename());
			FileUtils.uploadImageFile(file, UPLOADED_FOLDER1 + newPP);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1 + newPP, newPP);
			user.setProfilePicture(newPP);
		}
		User u1 = userDao.updateObject(user);
		return u1.getUserId();
	}

	public User getAllDetails(long userId) {
		User u = userDao.getById(User.class, userId);
		String newPP = u.getProfilePicture();

		File ProfileImage = new File(UPLOADED_FOLDER1 + newPP);
		if (!ProfileImage.exists()) {
			FTPUtils.download(newPP, UPLOADED_FOLDER1 + newPP);

		}
		Area a = areadao.getAllDetails(u.getAreaId());
		u.setStateId(a.getStateId());
		u.setStateName(a.getStateName());
		u.setCity_id(a.getCityId());
		u.setCity_name(a.getCityName());
		u.setAreaName(a.getAreaName());
		return u;
	}

}
