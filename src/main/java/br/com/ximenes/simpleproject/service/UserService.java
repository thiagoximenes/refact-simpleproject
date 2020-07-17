package br.com.ximenes.simpleproject.service;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.ximenes.simpleproject.controller.UserController;
import br.com.ximenes.simpleproject.dao.UserDao;
import br.com.ximenes.simpleproject.model.User;
import br.com.ximenes.simpleproject.model.UserType;
import br.com.ximenes.simpleproject.security.LoggedUser;

@RequestScoped
public class UserService {
	
	@Inject private Validator validator;
	@Inject private Result result;
	@Inject private UserDao userDao;
	@Inject private LoggedUser loggedUser;

	@IncludeParameters
	public void add (@Valid User user) {
		validator.onErrorRedirectTo(UserController.class).register();
		userDao.add(user);
		result.include("msg", "User successfully registered!");
		result.redirectTo(UserController.class).list();
	}

	public void remove(User user) {
		userDao.remove(user);
		result.include("msg", "User successfully removed!");
		result.redirectTo(UserController.class).list();
	}

	public void change(@Valid User user) {
		validator.onErrorRedirectTo(UserController.class).editPerfil(user.getId());
		if(user.getId() == loggedUser.getUser().getId() || loggedUser.getUser().getType() == UserType.ADMIN) {
			userDao.update(user);
			result.include("msg", "User successfully modified!");
			result.redirectTo(UserController.class).list();
		}else {
			result.include("msg", "You cannot do this!");
			result.redirectTo(UserController.class).list();
		}
	}

	public void changePerfil(@Valid User user) {
		validator.onErrorRedirectTo(UserController.class).editPerfil(user.getId());
			userDao.update(user);
			result.include("msg", "User successfully modified!");
			result.redirectTo(UserController.class).perfil(user.getId());
	}

}
