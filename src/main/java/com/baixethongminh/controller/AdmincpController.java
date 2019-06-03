package com.baixethongminh.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baixethongminh.dao.UserDAO;
import com.baixethongminh.entity.User;

@Controller
@RequestMapping("admincp")
public class AdmincpController {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private BCryptPasswordEncoder bCrypt;
	
	@ModelAttribute
	public void commonObject(ModelMap modelMap) {
		modelMap.addAttribute("admincpLinkActive", true);
		
	}
	
	@GetMapping("")
	public String index(ModelMap modelMap, Principal principal) {
		String username = principal.getName();
		User currentUser = userDAO.findOneByUsername(username);
		modelMap.addAttribute("currentUser", currentUser);
		long countUser = userDAO.count();
		modelMap.addAttribute("countUser", countUser);
		return "admin.index.index";
	}
	
	@GetMapping("general")
	public String general() {
		System.out.println(bCrypt.encode("admin"));
		return "admin.general";
	}
	
	@GetMapping("simple")
	public String simple() {
		return "admin.simple";
	}
	
	@GetMapping("form")
	public String form() {
		return "admin.form";
	}
	
}
