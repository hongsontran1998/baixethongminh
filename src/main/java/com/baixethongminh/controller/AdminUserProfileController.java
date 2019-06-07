package com.baixethongminh.controller;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.baixethongminh.dao.UserDAO;
import com.baixethongminh.entity.User;

@Controller
public class AdminUserProfileController {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private BCryptPasswordEncoder bCrypt;
	
	@GetMapping("/profile")
	public String index(ModelMap modelMap, Principal principal) {
		String username = principal.getName();
		User user = userDAO.findOneByUsername(username);
		modelMap.addAttribute("user", user);
		return "admin.user.profile";
	}
	
	@PostMapping("/profile")
	public String edit(@Valid @ModelAttribute("user") User user, BindingResult errors) {
		User oldUser = userDAO.findOneById(user.getId());
		user.setRole(oldUser.getRole());
		user.setEnable(oldUser.getEnable());
		System.out.println(user);
		
		if (user.getPassword().trim().equals("")) {
			user.setPassword(oldUser.getPassword());
		}
		if (errors.hasErrors()) {
			System.out.println("co loi input");
			return "admin.user.profile";
		}
		user.setPassword(bCrypt.encode(user.getPassword()));
		
		userDAO.update(user);
		return "redirect:/admincp";
	}
}
