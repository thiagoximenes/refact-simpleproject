package br.com.ximenes.simpleproject.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.ximenes.simpleproject.dao.UsuarioDao;
import br.com.ximenes.simpleproject.model.TipoUsuario;
import br.com.ximenes.simpleproject.model.Usuario;
import br.com.ximenes.simpleproject.security.Protecao;

@Controller
public class IndexController {

	private Result result;
	private Usuario usuario;
	private UsuarioDao usuarioDao;

	protected IndexController() {}

	@Inject
	public IndexController(Result result, Usuario usuario, UsuarioDao usuarioDao) {
		this.result = result;
		this.usuario= usuario;
		this.usuarioDao = usuarioDao;
	}

	@Path("/")
	public void index() {
		result.include("variable", "VRaptor!");
	}

	@Get("/dashboard")
	@Protecao(tipo = { TipoUsuario.ADMIN, TipoUsuario.NORMAL })
	public void dashboard() {
		List<Usuario> usuarios = usuarioDao.lista();
		result.include("tipoUsuario", TipoUsuario.values());
		result.include("usuarios", usuarios);
	}
}