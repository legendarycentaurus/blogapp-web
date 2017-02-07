package com.naresh.controller;

import java.util.List;

import org.springframework.dao.DuplicateKeyException;
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
			@RequestParam("emailId") String emailId, @RequestParam("roleId") int roleId, ModelMap modelMap) {
		user.setName(name);
		user.setPassword(password);
		user.setEmailId(emailId);
		role.setId(roleId);
		user.setRoleId(role);
		try {
			userService.signup(user);
		} catch (ServiceException e) {
			modelMap.addAttribute("MESSAGE","Unable to register");
			return "../Register.jsp";
		}
		catch (DuplicateKeyException e){
			modelMap.addAttribute("MESSAGE","ALREADY EXISTS");
			return "../Register.jsp";
		}
		return "../Register.jsp";
	}

	@GetMapping("/login")
	public String login(@RequestParam("userName") String name, @RequestParam("password") String password
			, ModelMap modelMap) {
		user.setName(name);
		user.setPassword(password);
		
		try {
			userService.login(user);
		} catch (ServiceException e) {
			modelMap.addAttribute("MESSAGE","Unable to login");
			return "../Register.jsp";
		}
		return "../Article";
	}
	
	
	@GetMapping("/update")
	public String update(@RequestParam("userId") int id, @RequestParam("password") String password,
		ModelMap modelMap) {
		user.setId(id);
		user.setPassword(password);
		
		try {
			userService.update(user);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		List<User> list=userService.listParticularUser(id);
		modelMap.addAttribute("updatedUser",list);
		return "../UpdateUser.jsp";
	}
	@GetMapping("/delete")
	public String delete(@RequestParam("userId") int id) {
		user.setId(id);
		
		try {
			userService.delete(user);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		
		return "../Register.jsp";
	}
	

}
