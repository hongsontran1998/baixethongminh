package com.baixethongminh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.baixethongminh.constant.SystemConstant;
import com.baixethongminh.dao.PriceDAO;

@Controller
@RequestMapping("admin/price")
public class AdminPriceController {
	@Autowired
	private PriceDAO priceDAO;
	
	@ModelAttribute
	public void commonObject(ModelMap modelMap) {
		modelMap.addAttribute("priceLinkActive", true);
	}

	@GetMapping("index")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("price", priceDAO.findPrice());
		modelMap.addAttribute("giamgia", priceDAO.findGiamGia());
		modelMap.addAttribute("title", "Điều chỉnh giá");
		return "admin.price.index";
	}
	@PostMapping("index")
	public String index(@RequestParam("price") Integer price, @RequestParam("giamgia") Integer giamgia,
			ModelMap modelMap, RedirectAttributes ra) {
		if (price == null || price < 0) {
			ra.addFlashAttribute("msg", "Vui lòng nhập giá trị hợp lệ!");
			return "redirect:/admin/price/index";
		}
		SystemConstant.GIAM_GIA = giamgia;
		SystemConstant.PRICE = price;
		ra.addFlashAttribute("msg", "Cập nhật thành công price!");
		return "redirect:/admin/price/index";
	}

}
