package com.naresh.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nanda.exception.ServiceException;
import com.nanda.model.SeedCategory;
import com.nanda.model.User;
import com.nanda.service.SeedCategoryService;

@Controller
@RequestMapping("/category")
public class SeedCategoryController {

	private SeedCategoryService scs=new SeedCategoryService();
	private SeedCategory sc=new SeedCategory();
	@GetMapping
	public String index(ModelMap modelMap){
		System.out.println("UserController->index");
		List<SeedCategory> list = scs.list();
		modelMap.addAttribute("SEEDCATEGORY_LIST", list);
		return "seedCategory.jsp";
	}
	
	@GetMapping("/newCategory")
	public String newCategory(@RequestParam("categoryName") String categoryName, @RequestParam("userId") int userId
		) {
		sc.setCategory(categoryName);
		User user=new User();
		user.setId(userId);
		sc.setUserId(user);
		
		try {
			scs.save(sc);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return "../category";
	}
	@GetMapping("/update")
	public String update(@RequestParam("categoryName") String categoryName, @RequestParam("userId") int userId,@RequestParam("id") int id
		) {
		sc.setCategory(categoryName);
		User user=new User();
		user.setId(userId);
		sc.setUserId(user);
		sc.setId(id);
		
		try {
			scs.update(sc);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return "../category";
	}
	@GetMapping("/delete")
	public String delete(@RequestParam("id") int id) {
		
		sc.setId(id);
		try {
			scs.delete(sc);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return "../category";
	}
	
}
