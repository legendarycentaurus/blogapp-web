package com.naresh.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nanda.exception.ServiceException;
import com.nanda.model.Role;
import com.nanda.model.User;
import com.nanda.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {

	private UserService userService = new UserService();
	private User user=new User();
	private Role role=new Role();
	@GetMapping
	public String index(ModelMap modelMap){
		System.out.println("UserController->index");
		List<User> list = userService.list();
		modelMap.addAttribute("USER_LIST", list);
		return "userlist.jsp";
	}
	
	@GetMapping("/save")
	public String signup(@RequestParam("userName") String name, @RequestParam("password") String password,
			@RequestParam("emailId") String emailId, @RequestParam("roleId") int roleId) {
		user.setName(name);
		user.setPassword(password);
		user.setEmailId(emailId);
		role.setId(roleId);
		user.setRoleId(role);
		try {
			userService.signup(user);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return "../Register.jsp";
	}

	@GetMapping("/login")
	public String login(@RequestParam("userName") String name, @RequestParam("password") String password
		) {
		user.setName(name);
		user.setPassword(password);
		
		try {
			userService.login(user);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return "../Article";
	}


}
