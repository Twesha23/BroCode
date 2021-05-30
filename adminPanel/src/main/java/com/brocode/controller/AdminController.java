package com.brocode.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.brocode.dao.AdminDao;
import com.brocode.dao.UserDao;
import com.brocode.model.Admin;
import com.brocode.model.Area;
import com.brocode.model.City;
import com.brocode.model.Home;
import com.brocode.model.User;
import com.brocode.service.AdminService;
import com.brocode.service.AreaService;
import com.brocode.service.CityService;
import com.brocode.util.FTPUtils;

@Controller
@RequestMapping("/admin")
@SessionAttributes("admin")
public class AdminController {

	@Autowired
	AdminService adminService;

	@Autowired
	AdminDao adminDao;

	@Autowired
	HttpSession session;

	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping("/adminList")
	public String adminList(Model model) {
		List<Admin> list = adminService.getAll();
		model.addAttribute("adminList", list);
		return "/admin/manageadmin";
	}

	@RequestMapping("/error")
	public String error() {
		return "error";
	}

	@RequestMapping("/adminRegistrationPage")
	public String registrationpage(Model model) {
		Admin admin = new Admin();
		model.addAttribute("admin1", admin);
		model.addAttribute("edit", false);
		return "/admin/addadmin";
	}

	@RequestMapping("/addAdmin")
	public String registrationpage(@ModelAttribute("admin1") Admin admin1, BindingResult result, Model model,
			@RequestParam("profileImage") MultipartFile file) {
		long result1 = adminService.addAdmin(admin1, file);
		/*
		 * if (result1 == 1) { model.addAttribute("errorMsg",
		 * "It is already exists...!!!"); return "redirect:/admin/addadmin"; }
		 */
		return "redirect:/admin/adminList";
	}

	@RequestMapping("deleteAdmin/{id}")
	public String deleteAdmin(@PathVariable("id") int id) {

		adminService.deleteAdmin(id);
		return "redirect:/admin/adminList";
	}

	@RequestMapping("/editAdmin/{id}")
	public String editAdmin(@PathVariable("id") long id, ModelMap model) {
		Admin admin1 = adminService.getById(id);
		model.addAttribute("admin1", admin1);
		model.addAttribute("edit", true);
		return "/admin/addadmin";
	}

	
	@RequestMapping("/viewAdmin/{id}")
	public String viewAdmin(@PathVariable("id") int id, ModelMap model) {
		Admin admin = adminService.getById(id);
		model.addAttribute("viewdetails", admin);
		//model.addAttribute("edit", true);
		return "/admin/editadmin";
	}

	@RequestMapping("/viewProfile")
	public String viewProfile(Model model) {
		Admin admin = (Admin) session.getAttribute("admin");
		Admin madmin = adminService.getById(admin.getAdminId());
		model.addAttribute("viewdetails", madmin);
		return "/admin/editadmin";
	}

	@RequestMapping("/updateAdmin")
	public String updateAdmin(@ModelAttribute("admin1") Admin admin1, BindingResult result, Model model,
			@RequestParam("profileImage") MultipartFile file) {
		long res = adminService.updateAdmin(admin1, file);
		if (res == 0) {
			model.addAttribute("errorMsg", "Something went wrong..Try again!");
			return "redirect:/admin/editAdmin/" + res;
		}
		return "redirect:/admin/adminList";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String displayLogin(Model model) {
		model.addAttribute("login", new LoginController());
		return "login";
	}
}