package com.brocode.serviceimpl;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.brocode.dao.AdminDao;
import com.brocode.model.Admin;
import com.brocode.service.LoginService;
import com.brocode.util.FTPUtils;
import com.brocode.util.Mailer;
import com.brocode.util.PasswordEncode;
import com.brocode.util.PasswordEncrypt;
import com.brocode.util.RandomString;

@Service("loginService")
@Transactional
@SessionAttributes("admin")
public class LoginServiceImpl implements LoginService{

	@Autowired
	AdminDao adminDao;
	
	@Autowired
	HttpSession session;
	
	private static String UPLOADED_FOLDER1 ="E:\\Tools\\Tomcat 9.0\\webapps\\brocodeadmin\\resources\\images\\profilePicture"+File.separator;
	
	@Override
	public Admin login(Admin admin) {
		String password = admin.getPassword();
		//String fpass = PasswordEncode.passwordEncode(admin.getPassword());
		admin.setPassword(PasswordEncode.passwordEncode(admin.getPassword()));
		Admin a = adminDao.loginCheck(admin);
		if(a!=null)
		{
			String newPP = a.getProfilePicture();
			File ProfileImage = new File(UPLOADED_FOLDER1+newPP);
			if(!ProfileImage.exists())
			{
				FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
			}
			//for(int i=0;i<20;i++)
			//a.setProfileImage((MultipartFile)(profileImage);
		}
		return a;
	}
	@Override
	public Admin forgotPassword(Admin admin) 
	{
		Admin a = adminDao.forgotpassword(admin);
		if (a.getPassword() != null) 
		{
			int n = 8;
			String password = RandomString.getAlphaNumericString(n);
			a.setPassword(PasswordEncode.passwordEncode(password));
			adminDao.updateObject(a);
			Mailer.send("maidinindia03@gmail.com", "brocode@41926", admin.getEmail(), "Hello,How r u?", password);
		}
		return a;

	}
	@Override
	public Admin changePass(Admin admin) 
	{
		if(admin.getCpassword().equals(admin.getNpassword()))
		{	
			admin.setPassword(PasswordEncode.passwordEncode(admin.getPassword()));
//			Admin a = adminDao.changepassword(admin);
//			if(a==null)
//				return null;
			Admin sAdmin = (Admin) session.getAttribute("admin");
			if (!(sAdmin.getPassword().equals(admin.getNpassword()))) 
			{
				sAdmin.setPassword(PasswordEncode.passwordEncode(admin.getNpassword()));
				adminDao.updateObject(sAdmin);
				//Mailer.send("maidinindia03@gmail.com", "brocode@41926", admin.getEmailId(), "Hello,How r u?", a.getPassword());
				return sAdmin;
			}
		}
		return null;
	}
}
