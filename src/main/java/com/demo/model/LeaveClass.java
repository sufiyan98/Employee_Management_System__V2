package com.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="lc")
@Data
public class LeaveClass {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int id;
	
	@Override
	public String toString() {
		return "LeaveClass [id=" + id + ", email=" + email + ", reason=" + reason + ", status=" + status + "]";
	}
	public String fmdate;
	public String todate;
	public String getFmdate() {
		return fmdate;
	}
	public void setFmdate(String fmdate) {
		this.fmdate = fmdate;
	}
	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}
	public String email;
	public String reason;
	public String status;
	
public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	//	public LeaveClass(int id, String email, String reason) {
//		super();
//		this.id = id;
//		this.email = email;
//		this.reason = reason;
	//}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	
	

}
