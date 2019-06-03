package com.baixethongminh.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.baixethongminh.dao.UserDAO;
import com.baixethongminh.entity.User;

@Controller
public class AdminUserProfileController {
	
	@Autowired
	private UserDAO userDAO;
	
	@GetMapping("/profile")
	public String index(ModelMap modelMap, Principal principal) {
		String username = principal.getName();
		User user = userDAO.findOneByUsername(username);
		modelMap.addAttribute("user", user);
		return "admin.user.profile";
	}
}
