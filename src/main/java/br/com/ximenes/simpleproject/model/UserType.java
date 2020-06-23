package br.com.ximenes.simpleproject.model;

import javax.validation.constraints.NotNull;

public enum UserType {
	ADMIN("ADMIN"), NORMAL("NORMAL");

	@NotNull
	private String userType;

	UserType(String userType) {
		this.userType = userType;
	}

	public String getUserType() {
		return userType;
	}

	public void setUser(String userType) {
		this.userType = userType;
	}

}