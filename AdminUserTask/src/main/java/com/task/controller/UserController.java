package com.task.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.task.model.Admin;
import com.task.model.User;
import com.task.repository.UserRepositoy;

@Controller
public class UserController {

	@Autowired
	UserRepositoy repo;

	
	@PostMapping("/AddUser")
	public String add(User u)
	{
		repo.save(u);
		return "redirect:/index.html";
	}
	
	@PostMapping("/loginUser")
	public String login(User u, Model m)
	{
		String username = u.getUsername();
		String password = u.getPassword();
		String message;
		
		List<User> user = repo.findAll();
		
		for(User u1 : user)
		{
	
			if (u1.getUsername().equals(username) && u1.getPassword().equals(password)) {
				message = "User Login Successfully";
				m.addAttribute("a", message);
				return "ReadOnly";
			}
			

		}
		
		message = "User Login Failed";
		m.addAttribute("a", message);
		return "ReadOnly";
	}
}


