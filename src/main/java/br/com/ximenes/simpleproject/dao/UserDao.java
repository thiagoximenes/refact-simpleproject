package br.com.ximenes.simpleproject.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.com.ximenes.simpleproject.model.User;
import br.com.ximenes.simpleproject.security.LoggedUser;

@RequestScoped
public class UserDao {

	@Inject private EntityManager manager;
	@Inject private LoggedUser loggedUser;

	public void add (User user) {
		try {
			manager.getTransaction().begin();
			manager.persist(user);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.close();
		}
	}

	public void remove (User user) {
		try {
			manager.getTransaction().begin();
			user = find(user);
			manager.remove(user);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.close();
		}
	}

	public void update (User user) {
		try {
			manager.getTransaction().begin();
			manager.merge(user);
			if(user.getId() == loggedUser.getUser().getId()) {
				loggedUser.getUser().setName(user.getName());
				loggedUser.getUser().setSurname(user.getSurname());
				loggedUser.getUser().setEmail(user.getEmail());
				loggedUser.getUser().setLogin(user.getLogin());
				loggedUser.getUser().setPassword(user.getPassword());
				loggedUser.getUser().setType(user.getType());
				loggedUser.getType();
			}
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.close();
		}
	}

	public List<User> list() {
		try {
			TypedQuery<User> query = manager.createQuery("select u from User u", User.class);
			return query.getResultList();
		} finally {
			manager.close();
		}
	}

	public User find (User user) {
		return manager.find(User.class, user.getId());
	}

	public User charge (int id) {
		return (User) this.manager.find(User.class, id);
	}

	public User search (String login, String password) {
		TypedQuery<User> query = manager.createQuery(
				"select u from User u " + " where u.login = :login and u.password = :password", User.class);
		query.setParameter("login", login);
		query.setParameter("password", password);

		try {
			return query.getSingleResult();
		} catch (NoResultException e) {
			e.printStackTrace();
			return null;
		}
	}
}
