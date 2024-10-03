package com.demo.repository;


import java.util.List;

import org.springframework.data.repository.CrudRepository;


import com.demo.model.Log;
import com.demo.model.SalaryClass;

public interface LogRepository extends CrudRepository<Log,Integer> {
	
	List<Log> findByEmail(String email);
}
