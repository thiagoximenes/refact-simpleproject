package br.com.ximenes.simpleproject.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;

@Entity
//@Table(uniqueConstraints={@UniqueConstraint(columnNames={"email"})})
public class User implements Serializable {

	private static final long serialVersionUID = -5469692683914786515L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@NotNull(message = "{user.name.empty}")
	@Length(min = 3, max = 15, message = "{user.name.length}")
	private String name;

	@NotNull(message = "{user.surname.vazio}")
	@Length(min = 3, max = 55, message = "{user.surname.length}")
	private String surname;

	@NotNull(message = "{user.email.empty}")
	@Length(min = 6, max = 55, message = "{user.email.length}")
	@Email(message = "{user.email.valid}")
	@Column(unique = true)
	private String email;

	@Enumerated(EnumType.STRING)
	@NotNull(message = "{user.type.empty}")
	private UserType type;

	@NotNull(message = "{user.login.empty}")
	@Length(min = 4, max = 30, message = "{user.login.length}")
	@Pattern(regexp = "[a-z0-9_]+", message = "{user.login.valid}")
	private String login;

	@NotNull(message = "{user.password.empty}")
	@Length(min = 4, max = 30, message = "{user.password.length}")
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserType getType() {
		return type;
	}

	public void setType(UserType type) {
		this.type = type;
	}
}
