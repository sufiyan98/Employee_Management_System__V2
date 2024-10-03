package com.demo.model;

import javax.persistence.Column;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import lombok.Data;

@Entity
@Table(name="ed")
@Data
public class Log {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@NotEmpty(message = "First Name should not be Empty")
	private String fName;
	@NotEmpty(message = "Last Name should not be Empty")
	private String lName;
	@NotEmpty(message = "Last Date of Birth should not be Empty")
	private String dob;
	@NotEmpty(message = "Gender should not be Empty")
	private String gender;
	@NotEmpty(message = "Father Name should not be Empty")
	private String faName;
	@NotEmpty(message = "Designation should not be Empty")
	private String designation;
	@NotEmpty(message = "Current Address should not be Empty")
	private String cd;
	@NotEmpty(message = "Permanent Address should not be Empty")
	private String pd;
	@Column(nullable = false, unique = true)
	@NotEmpty(message = "Email should not be Empty")
	private String email;
	@NotEmpty(message = "Password should not be Empty")
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getFaName() {
		return faName;
	}
	public void setFaName(String faName) {
		this.faName = faName;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getCd() {
		return cd;
	}
	public void setCd(String cd) {
		this.cd = cd;
	}
	public String getPd() {
		return pd;
	}
	public void setPd(String pd) {
		this.pd = pd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Log [id=" + id + ", fName=" + fName + ", lName=" + lName + ", dob=" + dob + ", gender=" + gender
				+ ", faName=" + faName + ", designation=" + designation + ", cd=" + cd + ", pd=" + pd + ", email="
				+ email + ", password=" + password + "]";
	}
}