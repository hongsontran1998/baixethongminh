package com.baixethongminh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.baixethongminh.dao.RoleDAO;
import com.baixethongminh.dao.UserDAO;
import com.baixethongminh.entity.User;

@Controller
public class AuthController {

	 @Autowired
	 private UserDAO userDAO;
	 @Autowired
	 private RoleDAO roleDAO;
	 @Autowired
		private BCryptPasswordEncoder bCrypt; 

	@GetMapping("login")
	public String login(ModelMap modelMap) {

		return "auth/login";
	}

	@GetMapping("")
	public String index() {
		return "redirect:/login";
	}

	@GetMapping("register")
	public String register() {
		return "auth/register";
	}

	@PostMapping("register")
	public String register(@RequestParam("username") String username, @RequestParam("password") String password,
			@RequestParam("fullname") String fullname, @RequestParam("email") String email, @RequestParam("telephone") String telephone,
			RedirectAttributes ra) {
		
		User user = new User();
		
		user.setUsername(username);
		user.setEmail(email);
		user.setTelephone(telephone);
		user.setPassword(bCrypt.encode(password));
		System.out.println(user);
		user.setRole(roleDAO.findOneByName("USER"));
		user.setEnable(1);
		
		userDAO.save(user);
		
		ra.addFlashAttribute("msg", "Register succesful! Thank you for register and check email and login!");
		return "redirect:/login";
	}

}
