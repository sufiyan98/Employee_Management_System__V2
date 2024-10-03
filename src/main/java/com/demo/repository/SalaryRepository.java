package com.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.demo.model.SalaryClass;

public interface SalaryRepository extends CrudRepository<SalaryClass,Integer> {
	

	
	List<SalaryClass> findByEmail(String email);
		
	//"select * from  users where username='"+login.getUsername()+"'and password='"+login.getPassword()+"'"

}
