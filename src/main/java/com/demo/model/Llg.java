package com.demo.model;

import javax.validation.constraints.NotBlank;

public class Llg {
	@NotBlank(message=" * email should not be empty")
	public String email;
	@NotBlank(message=" * Password should not be empty")
	public String password;
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
	

}
