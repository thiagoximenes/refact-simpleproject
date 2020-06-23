package br.com.ximenes.simpleproject.controller;

import java.util.List;

import javax.ejb.Remove;
import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.ximenes.simpleproject.dao.UserDao;
import br.com.ximenes.simpleproject.model.UserType;
import br.com.ximenes.simpleproject.model.User;
import br.com.ximenes.simpleproject.security.Protection;
import br.com.ximenes.simpleproject.security.LoggedUser;

@Controller
public class UserController {

	private UserDao userDao;
	private Result result;
	private Validator validator;
	private LoggedUser loggedUser;

	@Inject
	public UserController(UserDao userDao, Result result, Validator validator, LoggedUser loggedUser) {
		this.userDao = userDao;
		this.result = result;
		this.validator = validator;
		this.loggedUser = loggedUser;
	}

	public UserController() {
	}

	@Protection(type = { UserType.ADMIN })
	@Path("users/list")
	public void list() {
		List<User> users = userDao.list();
		result.include("userType", UserType.values());
		result.include("users", users);
	}

	@Protection(type = { UserType.ADMIN, UserType.NORMAL })
	@Path("/users/register")
	public void register() {
		result.include("userType", UserType.values());
	}

	@Protection(type = { UserType.ADMIN })
	@Get("/users/{id}")
	public User edit(int id) {
		result.include("userType", UserType.values());
		return userDao.charge(id);
	}

	@Protection(type = { UserType.ADMIN, UserType.NORMAL })
	@Get("/users/perfilupdate")
	public User editPerfil(int id) {
		result.include("userType", UserType.values());
		return userDao.charge(id);
	}

	@Protection(type = { UserType.ADMIN })
	@Get("/users/{id}/view")
	public User view(int id) {
		result.include("userType", UserType.values());
		return userDao.charge(id);
	}

	@Protection(type = { UserType.ADMIN, UserType.NORMAL })
	@Get("/users/perfil")
	public User perfil(int id) {
		result.include("userType", UserType.values());
		return userDao.charge(id);
	}

	@Protection(type = { UserType.ADMIN, UserType.NORMAL })
	@IncludeParameters
	public void add (@Valid User user) {
		validator.onErrorRedirectTo(this).register();
		userDao.add(user);
		result.include("msg", "User successfully registered!");
		result.redirectTo(this).list();
	}

	@Protection(type = { UserType.ADMIN })
	@Remove
	public void remove(User user) {
		userDao.remove(user);
		result.include("msg", "User successfully removed!");
		result.redirectTo(this).list();
	}

	@Protection(type = { UserType.ADMIN, UserType.NORMAL})
	@Put("/users/{user.id}")
	public void change(@Valid User user) {
		validator.onErrorRedirectTo(this).editPerfil(user.getId());
		if(user.getId() == loggedUser.getUser().getId() || loggedUser.getUser().getType() == UserType.ADMIN) {
			userDao.update(user);
			result.include("msg", "User successfully modified!");
			result.redirectTo(this).list();
		}else {
			result.include("msg", "You cannot do this!");
			result.redirectTo(this).list();
		}
	}

	@Protection(type = { UserType.ADMIN, UserType.NORMAL})
	@Put("/users/perfilupdate")
	public void changePerfil(@Valid User user) {
		validator.onErrorRedirectTo(this).editPerfil(user.getId());
			userDao.update(user);
			result.include("msg", "User successfully modified!");
			result.redirectTo(this).perfil(user.getId());
	}
	
	@Protection(type = { UserType.ADMIN })
	@Put("/users/{user.id}/view")
	public void view(@Valid User user) {
		validator.onErrorRedirectTo(this).edit(user.getId());
	}
}