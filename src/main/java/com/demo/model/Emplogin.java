package com.demo.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

public class Emplogin {
	@NotNull(message = " * email should not be empty")
	@NotBlank(message=" * email should not be empty")
	public String email;
	@NotNull(message = " * Password should not be empty")
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
