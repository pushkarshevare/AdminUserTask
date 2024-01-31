package com.task.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String Username;
	private String Password;
	
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(int id, String name, String username, String password) {
		super();
		this.id = id;
		this.name = name;
		Username = username;
		Password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + ", Username=" + Username + ", Password=" + Password + "]";
	}
	
	
}
