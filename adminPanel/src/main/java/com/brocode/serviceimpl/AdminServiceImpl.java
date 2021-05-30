package com.brocode.serviceimpl;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.brocode.util.FTPUtils;
import com.brocode.dao.AdminDao;
import com.brocode.model.Admin;
import com.brocode.service.AdminService;
import com.brocode.util.FileUtils;
import com.brocode.util.Mailer;
import com.brocode.util.PasswordEncode;
import com.brocode.util.PasswordEncrypt;
import com.brocode.util.RandomString;
import com.brocode.util.Email;


@Service("adminservice")
@Transactional
@SessionAttributes("admin")
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao adminDao;
	
	@Autowired
	HttpSession session;
	
	

	
	
	//@Autowired
	//private ServletContext context;
    String absolutePath1 = ""; 
    
    private static String UPLOADED_FOLDER1 = "D://Java Tools//apache-tomcat-8.5.66//webapps//adminPanel//resources//images//profilePicture"+File.separator;
	
    
	public long saveupdateAdmin(Admin admin, MultipartFile file) {
		admin.setCreatedBy(101);
		String newFileName = FileUtils.getFileName(file.getOriginalFilename());
		admin.setIsActive(1);
		admin.setProfilePicture(newFileName);
		admin.setProfileImage(file);
		String password = RandomString.getAlphaNumericString(8);
		admin.setPassword(PasswordEncode.passwordEncode(password));
		
		Admin newAdmin = adminDao.saveupdateAdmin(admin);
		if(admin != null)
		{
			FileUtils.uploadImageFile(file, UPLOADED_FOLDER1+newFileName);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1+newFileName, newFileName);
		}
		if(admin != null)
		{
			Mailer.send("garageinyourpocket@gmail.com", "garage@232426", admin.getEmail(),"Welcome to Garage In Your Pocket!! \n Your Password is: ", password);
		}
		
		return 0;
	}


	public long addAdmin(Admin admin, MultipartFile file) {
		
		String newPP=FileUtils.getFileName(file.getOriginalFilename());
		admin.setProfilePicture(newPP);
		admin.setProfileImage(file);
		Admin ad=(Admin)session.getAttribute("admin");
		admin.setIsActive(1);
		admin.setCreatedBy(ad.getAdminId());
		admin.setCreatedDate(new Date(System.currentTimeMillis()));
		admin.setModifiedBy(ad.getAdminId());
		admin.setModifiedDate(new Date(System.currentTimeMillis()));
		String password = RandomString.getAlphaNumericString(8);
		/*
		 * int result = adminDao.emailCheck(admin); if(result!=0) { return 1; } if
		 * (admin != null) {
		 */
			admin.setPassword(PasswordEncode.passwordEncode(password));
		
		Admin a = adminDao.saveObject(admin);
		if(a!=null)
		{
			Mailer.send("garageinyourpocket@gmail.com", "garage@232426", admin.getEmail(), "Welcome to Garage In Your Pocket!! \n Your Password is: ", password);
		}
		if(a!=null) {
			FileUtils.uploadImageFile(file, UPLOADED_FOLDER1+newPP);
		
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1+newPP, newPP);
		}
		return 0;
	}

	public Admin editAdmin(int id) {
		
		return null;
	}
	

	public int deleteAdmin(int id) {
		Admin admin= adminDao.getById(Admin.class, id);
		if(admin!=null)
		{
			admin.setIsDeleted(1);
			adminDao.updateObject(admin);
		}
		return 0;
	}

	public List<Admin> getAll() {
		
		List<Admin> adminList = adminDao.getActive();
		for(Admin a : adminList)
		{
			String newPP = a.getProfilePicture();
			File ProfileImage = new File(UPLOADED_FOLDER1+newPP);
			
			if(!ProfileImage.exists())
			{
				FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
				
			}
		}
			return  adminList;
		

	}


	public int updateAdmin(Admin admin, MultipartFile file) {
		//admin.setProfilePicture(FileUtils.getFileName(file.getOriginalFilename()));
		//admin.setIdProof(FileUtils.getFileName(file2.getOriginalFilename()));
		//admin.setPassword(pass);
		Admin oldad=adminDao.getById(Admin.class,admin.getAdminId());
		Admin ad = (Admin) session.getAttribute("admin");
		admin.setModifiedBy(ad.getAdminId());
		admin.setModifiedDate(new Date(System.currentTimeMillis()));
		if(file.isEmpty())
		{
			admin.setProfilePicture(oldad.getProfilePicture());
		}
		else if(!oldad.getProfilePicture().equals(file.getOriginalFilename()))
		{
			String newPP = FileUtils.getFileName(file.getOriginalFilename());
			FileUtils.uploadImageFile(file, UPLOADED_FOLDER1+newPP);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1+newPP, newPP);
			admin.setProfilePicture(newPP);
		}
		adminDao.updateObject(admin);
		
		return 0;
	}


	public Admin getById(long id) {
		Admin admin = adminDao.getById(Admin.class, id);
		String newPP = admin.getProfilePicture();
	
		File ProfileImage = new File(UPLOADED_FOLDER1+newPP);

		
	    
		if(!ProfileImage.exists())
		{
			FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
		
		}
		
		return admin;
	}



	

	/*public void changePassword(String oldpassword, String npassword, String cpassword) {
	
		
	}*/
}
