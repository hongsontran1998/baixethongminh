package com.baixethongminh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baixethongminh.dao.LogDAO;
import com.baixethongminh.entity.Log;

@Controller
@RequestMapping("admin/log")
public class AdminLogController {

	@Autowired
	private LogDAO logDAO;

	@GetMapping("index")
	public String index(ModelMap modelMap) {
		List<Log> logs = logDAO.findAll();
		modelMap.addAttribute("logs", logs);
		return "admin.log.index";
	}
}
