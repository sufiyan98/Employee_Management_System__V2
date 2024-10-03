package com.demo.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;


import com.demo.model.Time;

public interface TimeRepository extends CrudRepository<Time,Integer>{
	List<Time> findByEmail(String email);
}
