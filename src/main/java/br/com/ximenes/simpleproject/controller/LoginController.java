package br.com.ximenes.simpleproject.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.ximenes.simpleproject.dao.UsuarioDao;
import br.com.ximenes.simpleproject.model.TipoUsuario;
import br.com.ximenes.simpleproject.model.Usuario;
import br.com.ximenes.simpleproject.security.Protecao;
import br.com.ximenes.simpleproject.security.UsuarioLogado;

@Controller
public class LoginController {

	private UsuarioDao usuarioDao;
	private UsuarioLogado usuarioLogado;
	private Result result;
	private Validator validator;

	public LoginController() {
	}

	@Inject
	public LoginController(UsuarioDao usuarioDao, UsuarioLogado usuarioLogado, Result result, Validator validator) {
		this.usuarioDao = usuarioDao;
		this.usuarioLogado = usuarioLogado;
		this.result = result;
		this.validator = validator;

	}

	public void form() {
	}

	public void autentica(String login, String senha) {
		Usuario usuario = usuarioDao.busca(login, senha);
		if (usuario != null) {

			if (usuario.getTipo() == TipoUsuario.NORMAL) {
				usuarioLogado.fazLogin(usuario);
				result.redirectTo(IndexController.class).dashboard();
			} else {
				if (usuario.getTipo() == TipoUsuario.ADMIN) {
					usuarioLogado.fazLogin(usuario);
					result.redirectTo(IndexController.class).dashboard();
				} else {
					result.redirectTo(IndexController.class).index();
				}
			}
		} else {
			validator.add(new SimpleMessage("login_invalido", "Login ou senha incorretos."));
			validator.onErrorRedirectTo(this).form();
		}
	}

	public void desloga() {
		usuarioLogado.desloga();
		result.redirectTo(this).form();
	}
}
