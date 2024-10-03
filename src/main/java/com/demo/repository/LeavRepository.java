package com.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.demo.model.LeaveClass;
import com.demo.model.SalaryClass;


public interface LeavRepository extends CrudRepository<LeaveClass,Integer>{
	
	 List<LeaveClass> findByEmail(String email);
	
	

}
