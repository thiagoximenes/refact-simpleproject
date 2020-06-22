package br.com.ximenes.simpleproject.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.com.ximenes.simpleproject.model.Usuario;
import br.com.ximenes.simpleproject.security.UsuarioLogado;

@RequestScoped
public class UsuarioDao {

	private EntityManager manager;
	private UsuarioLogado usuarioLogado;

	@Inject
	public UsuarioDao(EntityManager manager, UsuarioLogado usuarioLogado) {
		this.manager = manager;
		this.usuarioLogado = usuarioLogado;
	}

	public UsuarioDao() {
	}

	public void adiciona(Usuario usuario) {
		try {
			manager.getTransaction().begin();
			manager.persist(usuario);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.close();
		}
	}

	public void remove(Usuario usuario) {
		try {
			manager.getTransaction().begin();
			usuario = encontra(usuario);
			manager.remove(usuario);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.close();
		}
	}

	public void atualiza(Usuario usuario) {
//		if(usuario.getId() == usuarioLogado.getUsuario().getId() || usuarioLogado.getUsuario().getTipo() == TipoUsuario.ADMIN) {
			try {
				manager.getTransaction().begin();
				manager.merge(usuario);
				if(usuario.getId() == usuarioLogado.getUsuario().getId()) {
					usuarioLogado.getUsuario().setNome(usuario.getNome());
					usuarioLogado.getUsuario().setSobrenome(usuario.getSobrenome());
					usuarioLogado.getUsuario().setEmail(usuario.getEmail());
					usuarioLogado.getUsuario().setLogin(usuario.getLogin());
					usuarioLogado.getUsuario().setSenha(usuario.getSenha());
					usuarioLogado.getUsuario().setTipo(usuario.getTipo());
					usuarioLogado.getTipo();
				}
//				System.out.println("MERGED AND UPDATED LOGGED USER");
				manager.getTransaction().commit();
			} catch (Exception e) {
				manager.close();
			}
//		}else {
//			System.out.println("Nao está logado, nem é ADMIN");
//		}
	}

	public List<Usuario> lista() {
		try {
			TypedQuery<Usuario> query = manager.createQuery("select u from Usuario u", Usuario.class);
			return query.getResultList();
		} finally {
			manager.close();
		}
	}

	public Usuario encontra(Usuario usuario) {
		return manager.find(Usuario.class, usuario.getId());
	}

	public Usuario carrega(int id) {
		return (Usuario) this.manager.find(Usuario.class, id);
	}

	public Usuario busca(String login, String senha) {
		TypedQuery<Usuario> query = manager.createQuery(
				"select u from Usuario u " + " where u.login = :login and u.senha = :senha", Usuario.class);
		query.setParameter("login", login);
		query.setParameter("senha", senha);

		try {
			return query.getSingleResult();
		} catch (NoResultException e) {
			e.printStackTrace();
			return null;
		}
	}

}
