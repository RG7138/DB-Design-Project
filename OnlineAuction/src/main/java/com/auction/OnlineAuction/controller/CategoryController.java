package com.auction.OnlineAuction.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.CategoryDao;
import com.auction.OnlineAuction.model.Admin;
import com.auction.OnlineAuction.model.Category;

@RestController
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	CategoryDao categoryDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllCategories() {
		
		ModelAndView model = new ModelAndView("viewCategory");
		model.addObject("categories", categoryDao.getCategoryDetails());
		return model;
		
	}
	
	@GetMapping(value = "/addCategory")
	public ModelAndView addCategory(HttpSession session) {
		session.removeAttribute("savedCategoryMessage");
		return new ModelAndView("addCategory", "category",new Category());
		
	}

	@PostMapping(value = "/saveCategory")
	public ModelAndView saveCategory(@ModelAttribute("category") Category category, Model model, HttpSession session) {
		
		boolean flag=false;
		
		Admin admin = (Admin) session.getAttribute("admin");
		category.setAdmin(admin);
		List<Category> list = categoryDao.getCategoryDetails();
		for(Category cat : list) {
			if(cat.getCategoryName().equalsIgnoreCase(category.getCategoryName())) {
				flag=true;
			}
		}
		
		
		if(flag) {
			session.setAttribute("savedCategoryMessage", "Category Already Present....");
		}else {
			
			Category addedCategory = categoryDao.saveCategory(category);
			if(addedCategory!=null) {
				session.setAttribute("savedCategoryMessage", "New Category added Successfully. Continue to add more .....");
			}else {
				session.setAttribute("savedCategoryMessage", "Error in adding category. Please try later ....");
			}
		}
		return new ModelAndView("addCategory","category",new Category());
		
	}
}
