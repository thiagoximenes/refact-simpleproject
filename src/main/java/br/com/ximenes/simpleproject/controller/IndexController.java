package br.com.ximenes.simpleproject.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.ximenes.simpleproject.model.TipoUsuario;
import br.com.ximenes.simpleproject.security.Protecao;

@Controller
public class IndexController {

	private final Result result;

	/**
	 * @deprecated CDI eyes only
	 */
	protected IndexController() {
		this(null);
	}

	@Inject
	public IndexController(Result result) {
		this.result = result;
	}

	@Path("/")
	public void index() {
		result.include("variable", "VRaptor!");
	}

	@Get("/dashboard")
	@Protecao(tipo = { TipoUsuario.ADMIN, TipoUsuario.NORMAL })
	public void dashboard() {
	}
}