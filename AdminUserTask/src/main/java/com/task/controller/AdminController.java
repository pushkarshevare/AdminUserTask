package com.task.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.task.model.Admin;
import com.task.model.User;
import com.task.repository.AdminRepository;
import com.task.repository.UserRepositoy;

@Controller
public class AdminController {

	@Autowired
	AdminRepository repo;
	
	@Autowired
	UserRepositoy repo2;
	

	@PostMapping("/Add")
	public String add(Admin a)
	{
		repo.save(a);
		return "AdminLogin";
	}
	
	@PostMapping("/login")
	public String login(Admin a, Model m)
	{
		String username = a.getUsername();
		String password = a.getPassword();
		
		List<Admin> admin = repo.findAll();
		
		for(Admin add : admin)
		{
	
			if (add.getUsername().equals(username) && add.getPassword().equals(password)) {
				return "Admin";
			}
			

		}
		
		String Error = "Error";
		m.addAttribute("a", Error);
		return "ReadOnly";
	}

	@GetMapping("/Read")
	public String read(Model m)
	{
		List<User> user = repo2.findAll();
		
		m.addAttribute("user", user);
		return "Read";
		
	}
	

	
}
