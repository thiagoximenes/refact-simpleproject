package br.com.ximenes.simpleproject.security;

import java.util.Arrays;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Accepts;
import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;
import br.com.ximenes.simpleproject.controller.IndexController;
import br.com.ximenes.simpleproject.controller.LoginController;
import br.com.ximenes.simpleproject.model.UserType;

@Intercepts
public class ProtectionInterceptor {

	private LoggedUser loggedUser;
	private Result result;
	private ControllerMethod method;

	public ProtectionInterceptor() {
	}

	@Inject
	public ProtectionInterceptor(LoggedUser loggedUser, Result result, ControllerMethod method) {
		this.loggedUser = loggedUser;
		this.result = result;
		this.method = method;
	}

	@Accepts
	public boolean accept() {
		return method.containsAnnotation(Protection.class);
	}

	@AroundCall
	public void intercept(SimpleInterceptorStack stack) {

		List<UserType> types = Arrays.asList(method.getMethod().getAnnotation(Protection.class).type());

		if (loggedUser.isLogado()) {
			if (types.contains(loggedUser.getType())) {
				stack.next();
			} else {
				result.include("msg", "You don't have permission to access.");
				result.redirectTo(IndexController.class).index();
			}
		} else {
			result.include("msg", "You don't have permission to access this page.");
			result.redirectTo(LoginController.class).form();
		}
	}
}
