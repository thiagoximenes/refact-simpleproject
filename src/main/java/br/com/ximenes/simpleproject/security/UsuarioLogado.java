package br.com.ximenes.simpleproject.security;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.ximenes.simpleproject.model.TipoUsuario;
import br.com.ximenes.simpleproject.model.Usuario;

@Named
@SessionScoped
public class UsuarioLogado implements Serializable{

	private static final long serialVersionUID = -2008364164879857618L;

	private Usuario usuario;
	
	public Usuario getUsuario() {
	    return this.usuario;
	}
	
	public TipoUsuario getTipo() {
		return usuario.getTipo();
	}
	
	public void fazLogin(Usuario usuario) {
		this.usuario = usuario;
	}
	
	public void desloga() {
		this.usuario = null;
	}
	
	public boolean isLogado() {
		return this.usuario != null;
	}
}
