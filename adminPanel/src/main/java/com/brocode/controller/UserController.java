package com.brocode.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.brocode.model.Area;
import com.brocode.model.City;
import com.brocode.model.User;
import com.brocode.service.AreaService;
import com.brocode.service.CityService;
import com.brocode.service.LoginService;
import com.brocode.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("admin")
public class UserController {
	
	@Autowired
	UserService userService;

	@Autowired
	CityService cityService;
	
	@Autowired
	AreaService areaService;
	
	@Autowired
	HttpSession session;
	
	
	@RequestMapping("/userList")
	public String userList(Model model) {
		List<User> userList = userService.getAll();
		model.addAttribute("users", userList);
		return "manageuser";
	}
	
	@RequestMapping("/viewUser/{id}")
	public String viewUser(@PathVariable("id") int id, Model model) {
		User user = userService.getById(id);
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("userdet", user);
		// model.addAttribute("edit", true);
		return "viewuser";
	}
	
	@RequestMapping("/deleteUser/{id}")
	public String deleteUser(@PathVariable("id") int id) 
	{
		int result1 = userService.deleteUser(id);
		return "redirect:/user/userList";
	}
	
}
