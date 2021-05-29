package com.brocode.service;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import com.brocode.model.Admin;

public interface AdminService {
	public long addAdmin(Admin admin, MultipartFile file);
	public Admin editAdmin(int id);
	public int deleteAdmin(int id);
	public List<Admin> getAll();
	public int updateAdmin(Admin admin, MultipartFile file);
	//public void changePassword(String oldpassword, String npassword, String cpassword);
	public long saveupdateAdmin(Admin admin, MultipartFile file);
	public Admin getById(long l);
	
}
