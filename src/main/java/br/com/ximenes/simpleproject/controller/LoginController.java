package br.com.ximenes.simpleproject.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.ximenes.simpleproject.dao.UserDao;
import br.com.ximenes.simpleproject.model.UserType;
import br.com.ximenes.simpleproject.model.User;
import br.com.ximenes.simpleproject.security.LoggedUser;

@Controller
public class LoginController {

	private UserDao userDao;
	private LoggedUser loggedUser;
	private Result result;
	private Validator validator;

	public LoginController() {
	}

	@Inject
	public LoginController(UserDao userDao, LoggedUser loggedUser, Result result, Validator validator) {
		this.userDao = userDao;
		this.loggedUser = loggedUser;
		this.result = result;
		this.validator = validator;
	}

	@Get("/login")
	public void form() {
	}

	public void authentic(String login, String password) {
		User user = userDao.search(login, password);
		if (user != null) {
			if (user.getType() == UserType.NORMAL) {
				loggedUser.doLogin(user);
				result.include("msg", "Welcome, now you are connected.");
				result.redirectTo(IndexController.class).dashboard();
			} else {
				if (user.getType() == UserType.ADMIN) {
					loggedUser.doLogin(user);
					result.include("msg", "Welcome, now you are connected.");
					result.redirectTo(IndexController.class).dashboard();
				} else {
					result.include("msg", "You don't have permission to access.");
					result.redirectTo(IndexController.class).index();
				}
			}
		} else {
			validator.add(new SimpleMessage("login_invalido", "Login or password incorrets."));
			result.include("msg", "Access refused.");
			validator.onErrorRedirectTo(this).form();
		}
	}

	public void logout(){
		loggedUser.logout();
		result.include("msg", "Bye.");
		result.redirectTo(this).form();
	}
}
