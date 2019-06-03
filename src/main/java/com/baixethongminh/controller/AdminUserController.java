package com.baixethongminh.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.baixethongminh.constant.SystemConstant;
import com.baixethongminh.dao.RoleDAO;
import com.baixethongminh.dao.UserDAO;
import com.baixethongminh.entity.User;

@Controller
@RequestMapping("admin/user")
public class AdminUserController {

	@Autowired
	private UserDAO userDAO;
	@Autowired
	private RoleDAO roleDAO;
	
	@Autowired
	private BCryptPasswordEncoder bCrypt; 
	
	@ModelAttribute
	public void commonObject(ModelMap modelMap) {
		modelMap.addAttribute("userLinkActive", true);
		modelMap.addAttribute("roles", roleDAO.findAll());
	}

	@GetMapping("index")
	public String index(@RequestParam(name = "page", required = false) Integer page, ModelMap modelMap) {
		
		int numberOfItems = (int) userDAO.count();
		int numberOfPages = (int) Math.ceil((float) numberOfItems / SystemConstant.PAGE_SIZE);
		if (page == null) {
			page = 1;
		} else if (page < 1) {
			return "redirect:/admin/user/index?page=1";
		} else if (page > numberOfPages) {
			return "redirect:/admin/user/index?page=" + numberOfPages;
		}
		int offset = (page - 1) * SystemConstant.PAGE_SIZE;
		
		List<User> users = userDAO.findPagination(offset);
		modelMap.addAttribute("page", page);
		modelMap.addAttribute("numberOfPages", numberOfPages);
		modelMap.addAttribute("numberOfItems", numberOfItems);
		modelMap.addAttribute("users", users);
		return "admin.user.index";
	}
	
	@GetMapping("add")
	public String add() {
		return "admin.user.add";
	}
	
	@PostMapping("add")
	public String add(@Valid @ModelAttribute("user") User user, BindingResult errors, @RequestParam("roleId") Integer roleId) {
		//System.out.println(user);
		//System.out.println(userDAO.findOneByUsername(user.getUsername()));
		user.setRole(roleDAO.findOneById(roleId));
		
		if (userDAO.findOneByUsername(user.getUsername()) != null) {
			errors.rejectValue("username", "user", "Username đã tồn tại");
		}
		if (userDAO.findOneByCardId(user.getCardId()) != null) {
			errors.rejectValue("cardId", "cardId", "CardId đã tồn tại");
		}
		if (user.getPassword().trim().equals("")) {
			errors.rejectValue("password", "user", "Không được rỗng");
		}
		if (errors.hasErrors()) {
			return "admin.user.add";
		}
		user.setPassword(bCrypt.encode(user.getPassword()));
		userDAO.save(user);
		return "redirect:/admin/user/index";
	}
	
	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") Integer id) {
		userDAO.delete(id);
		return "redirect:/admin/user/index";
	}
	
	@GetMapping("edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap modelMap) {
		User user = userDAO.findOneById(id);
		modelMap.addAttribute("user", user);
		return "admin.user.edit";
	}
	
	@PostMapping("edit/{id}")
	public String edit(@Valid @ModelAttribute("user") User user, BindingResult errors, @RequestParam("roleId") Integer roleId) {
		//System.out.println(user);
		user.setRole(roleDAO.findOneById(roleId));
		if (user.getPassword().trim().equals("")) {
			User oldUser = userDAO.findOneById(user.getId());
			user.setPassword(oldUser.getPassword());
		}
		if (errors.hasErrors()) {
			return "admin.user.edit";
		}
		user.setPassword(bCrypt.encode(user.getPassword()));
		userDAO.update(user);
		return "redirect:/admin/user/index";
	}
	
}
