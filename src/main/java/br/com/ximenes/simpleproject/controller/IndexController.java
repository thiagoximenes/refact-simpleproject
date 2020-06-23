package br.com.ximenes.simpleproject.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.ximenes.simpleproject.dao.UserDao;
import br.com.ximenes.simpleproject.model.UserType;
import br.com.ximenes.simpleproject.model.User;
import br.com.ximenes.simpleproject.security.Protection;

@Controller
public class IndexController {

	private Result result;
	private UserDao userDao;

	protected IndexController() {}

	@Inject
	public IndexController(Result result, UserDao userDao) {
		this.result = result;
		this.userDao = userDao;
	}

	@Path("/")
	public void index() {
	}

	@Get("/dashboard")
	@Protection(type = { UserType.ADMIN, UserType.NORMAL })
	public void dashboard() {
		List<User> users = userDao.list();
		result.include("userType", UserType.values());
		result.include("users", users);
	}
}