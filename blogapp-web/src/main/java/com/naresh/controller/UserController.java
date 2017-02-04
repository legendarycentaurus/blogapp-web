package com.naresh.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nanda.model.User;
import com.nanda.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {

	private UserService userService = new UserService();
	
	@GetMapping
	public String index(ModelMap modelMap){
		System.out.println("UserController->index");
		List<User> list = userService.list();
		modelMap.addAttribute("USER_LIST", list);
		return "userlist.jsp";
	}
}
