package com.demo.controller;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.demo.model.Emplogin;
import com.demo.model.LeaveClass;
import com.demo.model.Llg;
import com.demo.model.Log;
import com.demo.model.SalaryClass;
import com.demo.model.Time;
import com.demo.repository.LeavRepository;
import com.demo.repository.LogRepository;
import com.demo.repository.SalaryRepository;
import com.demo.repository.TimeRepository;
import com.demo.service.LogService;


@Controller
public class LogController {
	@Autowired
	private LogService ls;
	
	@Autowired
	private SalaryRepository sl;
	@Autowired
	private LeavRepository lr;
	@Autowired
	private TimeRepository trr;
	@Autowired
	private LogRepository lor;
	
	String email=null;
	@RequestMapping("/hh")
	public String home() {
		return "home";
	}
	@RequestMapping("/logi")
	public String login() {
		return "login";
	}
	@PostMapping("/llo")
	public String loginsucc(@ModelAttribute Llg llg) throws SQLException, ClassNotFoundException {
		System.out.println(llg.email);
		//String sql="select * from log where email='"+llg.email+"'password"+llg.password+")";
		
		
		
		String url="jdbc:mysql://localhost:3306/virtusa12";
		String uname="root";
		String pass="sufiyan";
		
		String name=llg.email;
		String password=llg.password;
			
		try(Connection con=DriverManager.getConnection(url,uname,pass); PreparedStatement ps =con.prepareStatement("select * from addminn where email=? and password=?;")){
		Class.forName("com.mysql.jdbc.Driver");
		ps.setString(1, name);
		ps.setString(2, password);
		ResultSet rs= ps.executeQuery();
	    if (rs.next()) {
	    	return"welcome";
			
			
		}
		}
		 catch (SQLException e) {
				e.printStackTrace();
			}
			 catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
	    
		
		return "login";
	}
	//--Employee Registration->by admin---------------------P
	
	@RequestMapping("/regist")
	public String logpage() {
		return "register";
	}
	@PostMapping("/reg")
	public String savedata(@Valid @ModelAttribute Log log,BindingResult result ,Model m) {
		
		if(result.hasErrors() ) {
			List<FieldError> errors = result.getFieldErrors();
			
			List<String> l1 = new ArrayList<>();
			List<String> l2 = new ArrayList<>();
			List<String> l3 = new ArrayList<>();
			List<String> l4 = new ArrayList<>();
			List<String> l5 = new ArrayList<>();
			List<String> l6 = new ArrayList<>();
			List<String> l7 = new ArrayList<>();
			List<String> l8 = new ArrayList<>();
			List<String> l9 = new ArrayList<>();
			List<String> l10 = new ArrayList<>();
			
			System.out.println(errors);
			
			for (FieldError error : errors ) {
				if(error.getField().equals("fName"))    l1.add(error.getDefaultMessage());
				if(error.getField().equals("lName"))    l2.add(error.getDefaultMessage());
				if(error.getField().equals("dob"))    l3.add(error.getDefaultMessage());
				if(error.getField().equals("gender"))    l4.add(error.getDefaultMessage());
				if(error.getField().equals("faName"))    l5.add(error.getDefaultMessage());
				if(error.getField().equals("designation"))    l6.add(error.getDefaultMessage());
				if(error.getField().equals("cd"))    l7.add(error.getDefaultMessage());
				if(error.getField().equals("pd"))    l8.add(error.getDefaultMessage());
				if(error.getField().equals("email"))    l9.add(error.getDefaultMessage());
				if(error.getField().equals("password"))    l10.add(error.getDefaultMessage());
	
		        System.out.println (error.getField() + " - " + error.getDefaultMessage());
		        
		    			    	
		    }
			System.out.println(l1);
			System.out.println(l2);
			m.addAttribute("l1",l1);
			m.addAttribute("l2",l2);
			m.addAttribute("l1",l3);
			m.addAttribute("l2",l4);
			m.addAttribute("l1",l5);
			m.addAttribute("l2",l6);
			m.addAttribute("l1",l7);
			m.addAttribute("l2",l8);
			m.addAttribute("l1",l9);
			m.addAttribute("l2",l10);
			
			
			return "register";
		}
		
		ls.logadd(log);
		
		return "welcome";
		//}
		
	}
	
	
	@RequestMapping("/alld")
	public String getAllEmployees(Model m,Log log){
		List<Log> all=ls.getAll();
		m.addAttribute("all", all);	
		return "llist";
		
		
	}
	
	@RequestMapping("/deldata")
	public String del(@RequestParam int id,Model m) {
		ls.delemp(id);
		m.addAttribute("e","deleted Successfully");
		return "welcome";		
	}
	
	@RequestMapping("/editdata")
	public String editadata(@RequestParam int id,Model m,HttpServletRequest req) {
		Optional<Log> rr=ls.edid(id);
		m.addAttribute("id",rr.get().getId());
		m.addAttribute("fName",rr.get().getfName());
		m.addAttribute("lName",rr.get().getlName());
		m.addAttribute("dob",rr.get().getDob());
		m.addAttribute("gender",rr.get().getGender());
		m.addAttribute("faName",rr.get().getFaName());
		m.addAttribute("designation",rr.get().getDesignation());
		m.addAttribute("cd",rr.get().getCd());
		m.addAttribute("pd",rr.get().getPd());
		m.addAttribute("email",rr.get().getEmail());
		m.addAttribute("password",rr.get().getPassword());
		
		return"editemp";
		
	}
	//-------------------------------------------------
	
	
	@PostMapping("/sed")
	public String jhdf(@ModelAttribute Log log) {
		ls.logadd(log);
		return "welcome";
		
	}
	@PostMapping("/emlo")
	public String hjhd(@ModelAttribute Emplogin emplogin,Model m) throws SQLException, ClassNotFoundException {
		//System.out.println(emplogin.email);
		//String sql="select * from log where email='"+llg.email+"'password"+llg.password+")";
		
		
		
		String url="jdbc:mysql://localhost:3306/virtusa12";
		String uname="root";
		String pass="sufiyan";
		
		String name=emplogin.email;
		String password=emplogin.password;
			
		try(Connection con=DriverManager.getConnection(url,uname,pass); PreparedStatement ps =con.prepareStatement("select * from ed where email=? and password=?;")){
		Class.forName("com.mysql.jdbc.Driver");
		ps.setString(1, name);
		ps.setString(2, password);
		ResultSet rs= ps.executeQuery();
	    if (rs.next()) {
	    	
	    	email=name;
	    	return"welemp";
			
			
		}
		}
		 catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    
	
		m.addAttribute("r","Please enter correct details");
		return "emlogin";
	}
	@RequestMapping("/loginnn")
	public String jhs() {
		return "emlogin";
	}
	//---Employee leave----------------------------R
	
	@RequestMapping("/afl")
	public String kjdfd(Model m) {
		System.out.println(email);
		m.addAttribute("email",email);
		
		return"leave";
	}
	@PostMapping("/lea")
	public String jsdfnn(@ModelAttribute LeaveClass leaveClass) {
		
		ls.saveleave(leaveClass);
		System.out.println(leaveClass.email);
		return"welemp";
		
		
		
	}
	
	@RequestMapping("/vs")
	public String jsf(Model m,HttpServletRequest req) {
		List<LeaveClass> hd = lr.findByEmail(email);
		System.out.println(hd);
		m.addAttribute("hd",hd);
			
		return "viewlea";
		
		
	}
	//----leave->by admin---------------------------------------------S,P
	@RequestMapping("/vt")
	public String hsfwejh(Model m,LeaveClass leaveClass) {

		List<LeaveClass> rrr=lr.findByEmail(email);
		
		m.addAttribute("ww",rrr);
		
		
		return"val";
		
	}
	@RequestMapping("/editlea")
	public String hdssjd(@RequestParam int id,Model m,HttpServletRequest req) {
		Optional<LeaveClass> rr=ls.edilea(id);
		m.addAttribute("id",rr.get().getId());
		m.addAttribute("email",rr.get().getEmail());
		m.addAttribute("fmdate",rr.get().getFmdate());
		m.addAttribute("todate",rr.get().getTodate());
		m.addAttribute("reason",rr.get().getReason());
		m.addAttribute("status",rr.get().getStatus());
		
		
		return"editreq";
		
	}
	@RequestMapping("/savest")
	public String hjeg(@ModelAttribute LeaveClass leaveClass) {
		ls.saveleave(leaveClass);
		return "welcome";
		
	}
	
	//----Employee Salary entered by Admin-----------------S
	
	@RequestMapping("/sal")
	public String as() {
		return "addsalary";
	}
	@PostMapping("/savesa")
	public String jsdfn(@ModelAttribute SalaryClass salaryClass) {
		
		ls.savsal(salaryClass);
		System.out.println(salaryClass.getEmail());
		return"welcome";
		
		
		
	}
	@RequestMapping("/vss")
	public String shdbf(Model m) {
		
		List<SalaryClass> hh=ls.getSalary();
		m.addAttribute("hh", hh);
		return "viewsal";
		
	}
	@RequestMapping("/editsal")
	public String had(@RequestParam int id,Model m,HttpServletRequest req) {
		Optional<SalaryClass> rr=ls.saledi(id);
		m.addAttribute("id",rr.get().getId());
		m.addAttribute("email",rr.get().getEmail());
		m.addAttribute("month",rr.get().getMonth());
		m.addAttribute("year",rr.get().getYear());
		m.addAttribute("amount",rr.get().getAmount());
		
		return "editsalary";
	}
	@PostMapping("/savesall")
	public String jsfn(@ModelAttribute SalaryClass salaryClass) {
		
		ls.savesalary(salaryClass);
		System.out.println(salaryClass.getEmail());
		return"welcome";
	}
	@RequestMapping("/delsal")
	public String jbnfd(@RequestParam int id,Model m) {
		ls.delsalary(id);
		return "welcome";
	}
	
	
	//----Salary view->by employee-----------------------------------------------R
	@RequestMapping("/es")
	public String jsdn(Model m,SalaryClass salaryClass) {
		System.out.println(email);
		List<SalaryClass> hd=sl.findByEmail(email);
//		m.addAttribute("email",hd.get().getEmail());
//		m.addAttribute("month",hd.get().getMonth());
//		m.addAttribute("year",hd.get().getYear());
//		m.addAttribute("amount",hd.get().getAmount());
			System.out.println("...........");
			System.out.println(hd);
		//System.out.println(sl.findByEmail(email));
		m.addAttribute("hd",hd);
		return "empsal";
	}
	//Time.................Su
	@RequestMapping("/at")
	public String jsdn(Model m) {
		m.addAttribute("email",email);
		return "timeemp";
		
	}
	@PostMapping("/savetime")
	public String hdff(@ModelAttribute Time time) {
	
		ls.tisa(time);
		return "welemp";
		
		
		
	}
	@RequestMapping("/vtt")//------------------viewed by Employee
	public String hjgsfd(Model m) {
		List<Time> hd=trr.findByEmail(email);
		m.addAttribute("hd",hd);
		return "viewemptime";
		
		
	}
	
	
	//admin time edit--------------------------------------------P
	@RequestMapping("/avt")
	public String hbf(Model m,Time time) {
		List<Time> rrr=ls.gettime();
		
		m.addAttribute("hh",rrr);
		return "admintime";
	}
	@RequestMapping("/deltime")
	public String hdb(@RequestParam int id,Model m) {
		ls.deltime(id);
		return "welcome";
		
	}
	@RequestMapping("/edittime")
	public String habd(@RequestParam int id,Model m,HttpServletRequest req) {
		Optional<Time> rr=ls.fiti(id);
		m.addAttribute("id",rr.get().getId());
		m.addAttribute("email",rr.get().getEmail());
		m.addAttribute("date",rr.get().getDate());
		m.addAttribute("hours",rr.get().getHours());
		m.addAttribute("description",rr.get().getDescription());
		m.addAttribute("status",rr.get().getStatus());
		return "adedti";
		
		
		
	}
	@PostMapping("/sati")
	public String jfbh(@ModelAttribute Time time) {
		ls.tisa(time);
		return "welcome";
		
	}
	@RequestMapping("/vat")
	public String hbsdf(Model m) {
		List<LeaveClass> ww=ls.getleave();
		m.addAttribute("ww",ww);
		return"val";
	}
	@RequestMapping("/delle")
	public String hdbf(@RequestParam int id,Model m) {
		ls.delleave(id);
		return "welcome";
		
	}
	

	// Leave Apply By admin
	@RequestMapping("/tim")
	public String hfbdf() {
		
		return"adminleave";
		
	}
	
	@PostMapping("/adlea")
	public String ahgfh(LeaveClass lc) {
		ls.saveleave(lc);
		return "welcome";
		
	}
	@RequestMapping("/logout")
	public String jhdf() {
		return "home";
	}
	
	@RequestMapping("/homeemp")
	public String hsdb() {
		return "hemp";
	}
	//Change Password--->By Employee-------------------------------------R
	
	@RequestMapping("/chpa")
	public String jdf(Model m, Log log,HttpServletRequest req) {
		   
		List<Log> hdh=lor.findByEmail(email);
		System.out.println(hdh);
		m.addAttribute("hdh",hdh);
		m.addAttribute("id",hdh.get(0).getId());
		m.addAttribute("fName",hdh.get(0).getfName());
		m.addAttribute("lName",hdh.get(0).getlName());
		m.addAttribute("dob",hdh.get(0).getDob());
		m.addAttribute("gender",hdh.get(0).getGender());
		m.addAttribute("faName",hdh.get(0).getFaName());
		m.addAttribute("designation",hdh.get(0).getDesignation());
		m.addAttribute("cd",hdh.get(0).getCd());
		m.addAttribute("pd",hdh.get(0).getPd());
		m.addAttribute("email",hdh.get(0).getEmail());
		m.addAttribute("password",hdh.get(0).getPassword());
		return "chanpassw";
	}
	@RequestMapping("/chge")
	public String jhsbg(@ModelAttribute Log log) {
		ls.logadd(log);
		
		return "welemp";
		
		
		
	}
	@RequestMapping("/hhhh")
	public String hshdc() {
		return "welemp";
	}
	
	@RequestMapping("/adminlogout")
	public String shdf() {
		return "home";
	}
	@RequestMapping("/adminhome")
	public String jhdef() {
		return "welcome";
	}
	//----Profile Viewed by employee---------------R,S
	@RequestMapping("/vpp")
	public String jdnf(Model m) {
		List<Log> hdh=lor.findByEmail(email);
		m.addAttribute("id",hdh.get(0).getId());
		m.addAttribute("fName",hdh.get(0).getfName());
		m.addAttribute("lName",hdh.get(0).getlName());
		m.addAttribute("dob",hdh.get(0).getDob());
		m.addAttribute("gender",hdh.get(0).getGender());
		m.addAttribute("faName",hdh.get(0).getFaName());
		m.addAttribute("designation",hdh.get(0).getDesignation());
		m.addAttribute("cd",hdh.get(0).getCd());
		m.addAttribute("pd",hdh.get(0).getPd());
		m.addAttribute("email",hdh.get(0).getEmail());
		System.out.println(hdh.get(0).getGender());
		return "viepro";	
	}
}
