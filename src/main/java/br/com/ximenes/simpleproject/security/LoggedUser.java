package br.com.ximenes.simpleproject.security;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.ximenes.simpleproject.model.UserType;
import br.com.ximenes.simpleproject.model.User;

@Named
@SessionScoped
public class LoggedUser implements Serializable {

	private static final long serialVersionUID = -2008364164879857618L;

	private User user;

	public User getUser() {
		return this.user;
	}

	public UserType getType() {
		return user.getType();
	}

	public void doLogin(User user) {
		this.user = user;
	}

	public void logout() {
		this.user = null;
	}

	public boolean isLogado() {
		return this.user != null;
	}
}
