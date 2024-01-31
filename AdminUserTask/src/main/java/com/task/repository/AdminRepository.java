package com.task.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.task.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer> {
	

}
