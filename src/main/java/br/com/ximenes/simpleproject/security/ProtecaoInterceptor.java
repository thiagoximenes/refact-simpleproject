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
import br.com.ximenes.simpleproject.model.TipoUsuario;

@Intercepts
public class ProtecaoInterceptor {

	private UsuarioLogado usuarioLogado;
	private Result result;
	private ControllerMethod method;

	public ProtecaoInterceptor() {
	}

	@Inject
	public ProtecaoInterceptor(UsuarioLogado usuarioLogado, Result result, ControllerMethod method) {
		this.usuarioLogado = usuarioLogado;
		this.result = result;
		this.method = method;
	}

	@Accepts
	public boolean accept() {
		return method.containsAnnotation(Protecao.class);
	}

	@AroundCall
	public void intercept(SimpleInterceptorStack stack) {

		List<TipoUsuario> tipos = Arrays.asList(method.getMethod().getAnnotation(Protecao.class).tipo());

		if (usuarioLogado.isLogado()) {
			if (tipos.contains(usuarioLogado.getTipo())) {
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
