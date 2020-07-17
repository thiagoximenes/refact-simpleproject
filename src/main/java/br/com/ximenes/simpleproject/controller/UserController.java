package br.com.ximenes.simpleproject.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.ximenes.simpleproject.dao.UserDao;
import br.com.ximenes.simpleproject.model.UserType;
import br.com.ximenes.simpleproject.model.User;
import br.com.ximenes.simpleproject.security.Protection;
import br.com.ximenes.simpleproject.service.UserService;

@Controller
public class UserController {

	@Inject private UserDao userDao;
	@Inject private Result result;
	@Inject private UserService userService;

	@Path("/users/register")
	public void register() {
		result.include("userType", UserType.values());
	}

	@Post("/users")
	public void create(User user) {
		userService.add(user);
	}
	
	@Get("/users/{id}")
	public User edit(int id) {
		result.include("userType", UserType.values());
		return userDao.charge(id);
	}

	@Put("/users/{id}/edit")
	public void update(User user) {
		userService.change(user);
	}
	
	@Get("/users/{user.id}/remove")
	public void delete(User user) {
		userService.remove(user);
	}
	
	@Protection(type = { UserType.ADMIN })
	@Path("users/list")
	public void list() {
		List<User> users = userDao.list();
		result.include("userType", UserType.values());
		result.include("users", users);
	}

	@Protection(type = { UserType.ADMIN, UserType.NORMAL })
	@Get("/users/perfil")
	public User perfil(int id) {
		result.include("userType", UserType.values());
		return userDao.charge(id);
	}

	@Protection(type = { UserType.ADMIN })
	@Get("/users/{id}/view")
	public User view(int id) {
		result.include("userType", UserType.values());
		return userDao.charge(id);
	}
	
	@Put("users/perfilupdate")
	public void updatePerfil(User user) {
		userService.changePerfil(user);
	}
	

	@Get("/users/perfilupdate")
	public User editPerfil(int id) {
		result.include("userType", UserType.values());
		return userDao.charge(id);
	}

//	@Protection(type = { UserType.ADMIN })
//	@Put("/users/{user.id}/view")
//	public void view(@Valid User user) {
//		validator.onErrorRedirectTo(this).edit(user.getId());
//	}
}