package com.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import com.demo.model.LeaveClass;
import com.demo.model.Log;
import com.demo.model.SalaryClass;
import com.demo.model.Time;
import com.demo.repository.LeavRepository;
import com.demo.repository.LogRepository;
import com.demo.repository.SalaryRepository;
import com.demo.repository.TimeRepository;


@Configuration
public class LogService {
	@Autowired
	private LogRepository lr;
	@Autowired
	private LeavRepository llr;
	@Autowired
	private SalaryRepository slr;
	@Autowired
	private TimeRepository tr;
	
	
	
	public void  logadd(Log log) {
		
		lr.save(log);
	}

	public List<Log> getAll(){
		return (List<Log>)lr.findAll();
		
	}
	
	public void delemp(int id) {
		lr.deleteById(id);
	}
	
	
	
	
	public Optional<Log> edid(int id){
		return lr.findById(id);
	}
	
	public void saveleave(LeaveClass leaveclass) {
		
		llr.save(leaveclass);
		
	}
	public List<LeaveClass> findleave(String email){
		
		return (List<LeaveClass>)llr.findByEmail(email);
		
	}
	public List<LeaveClass> getleave(){
		return (List<LeaveClass>)llr.findAll();
		
	}
	
	
	
	
	public Optional<LeaveClass> edilea(int id){
		return llr.findById(id);
	}
	public void delleave(int id) {
		llr.deleteById(id);
	}
	
	public void savsal(SalaryClass salaryClass) {
		slr.save(salaryClass);
		
	}
	public void savesalary(SalaryClass s) {
		System.out.println(s);
		slr.save(s);
		
	}
	public void delsalary(int id) {
		slr.deleteById(id);
	}
	
	
	
	
	public Optional<SalaryClass> saledi(int id){
		return slr.findById(id);
	}
	
	public List<SalaryClass> getSalary(){
		return (List<SalaryClass>)slr.findAll();
	}
	public List<SalaryClass> onlysal(String email){
		System.out.println(email);
		return slr.findByEmail(email);
	}
	
	public void tisa(Time time) {
		tr.save(time);
		
	}
	public void deltime(int id) {
		tr.deleteById(id);
	}
	public List<Time> gettime(){
		return (List<Time>)tr.findAll();
		
	}
	public Optional<Time> fiti(int id){
		return tr.findById(id);
	}
}
