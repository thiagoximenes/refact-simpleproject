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
import br.com.ximenes.simpleproject.dao.UsuarioDao;
import br.com.ximenes.simpleproject.model.TipoUsuario;
import br.com.ximenes.simpleproject.model.Usuario;
import br.com.ximenes.simpleproject.security.Protecao;

@Controller
public class UsuarioController {

	private UsuarioDao usuarioDao;
	private Result result;
	private Validator validator;

	@Inject
	public UsuarioController(UsuarioDao usuarioDao, Result result, Validator validator) {
		this.usuarioDao = usuarioDao;
		this.result = result;
		this.validator = validator;
	}

	public UsuarioController() {
	}

	@Protecao(tipo = { TipoUsuario.ADMIN })
	@Path("usuarios/lista")
	public void lista() {
		List<Usuario> usuarios = usuarioDao.lista();
		result.include("tipoUsuario", TipoUsuario.values());
		result.include("usuarios", usuarios);
	}

	@Protecao(tipo = { TipoUsuario.ADMIN, TipoUsuario.NORMAL })
	@Path("/usuarios/novo")
	public void novo() {
		result.include("tipoUsuario", TipoUsuario.values());
	}

	// EDIÇÃO DE USUÁRIOS (dados de cadastro)
	@Protecao(tipo = { TipoUsuario.ADMIN, TipoUsuario.NORMAL })
	@Get("/usuarios/{id}")
	public Usuario edita(int id) {
		result.include("tipoUsuario", TipoUsuario.values());
		return usuarioDao.carrega(id);
	}

////	EDIÇÃO DE USUÁRIOS (dados de cadastro)
//	@Protecao(tipo={TipoUsuario.NORMAL})
//	@Get("/usuarios/perfil/{id}")
//	public Usuario editaSelf (int id){
//		result.include("tipoUsuario", TipoUsuario.values());
//	    return usuarioDao.carrega(id);
//	}

	@Protecao(tipo = { TipoUsuario.ADMIN })
	@Get("/usuarios/{id}/view")
	public Usuario view(int id) {
		result.include("tipoUsuario", TipoUsuario.values());
		return usuarioDao.carrega(id);
	}

	@Protecao(tipo = { TipoUsuario.ADMIN, TipoUsuario.NORMAL })
	@Get("/usuarios/perfil")
	public Usuario perfil(int id) {
		result.include("tipoUsuario", TipoUsuario.values());
		return usuarioDao.carrega(id);
	}

	// ADICIONA USUÁRIOS
	@Protecao(tipo = { TipoUsuario.ADMIN, TipoUsuario.NORMAL })
	@IncludeParameters
	public void adiciona(@Valid Usuario usuario) {
		validator.onErrorRedirectTo(this).novo();
		usuarioDao.adiciona(usuario);
		result.include("msg", "User successfully registered!");
		result.redirectTo(this).lista();
	}

	// REMOVE USUÁRIOS
	@Protecao(tipo = { TipoUsuario.ADMIN })
	@Remove
	public void remove(Usuario usuario) {
		usuarioDao.remove(usuario);
		result.include("msg", "User successfully removed!");
		result.redirectTo(this).lista();
	}

	// FUNC. EDIÇÃO USUÁRIOS
	@Protecao(tipo = { TipoUsuario.ADMIN, TipoUsuario.NORMAL })
	@Put("/usuarios/{usuario.id}")
	public void altera(@Valid Usuario usuario) {
		validator.onErrorRedirectTo(this).edita(usuario.getId());
		usuarioDao.atualiza(usuario);
		result.include("msg", "User successfully modified!");
		result.redirectTo(this).lista();
	}

//	//FUNC. EDIÇÃO USUÁRIOS
//	@Protecao(tipo={TipoUsuario.NORMAL})
//	@Put("/usuarios/perfil/{usuarioLogado.usuario.id}")
//	public void alteraSelf(@Valid Usuario usuario){
//		validator.onErrorRedirectTo(this).editaSelf(usuario.getId());
//	    usuarioDao.atualiza(usuario);
//	    result.include("usuario_msg_e", "Usuário modificado com sucesso!");
//	    result.redirectTo(this).lista();
//	}

	// FUNC. EDIÇÃO USUÁRIOS
	@Protecao(tipo = { TipoUsuario.ADMIN })
	@Put("/usuarios/{usuario.id}/view")
	public void view(@Valid Usuario usuario) {
		validator.onErrorRedirectTo(this).edita(usuario.getId());
//		    usuarioDao.atualiza(usuario);
//		    result.redirectTo(this).lista();
	}

}