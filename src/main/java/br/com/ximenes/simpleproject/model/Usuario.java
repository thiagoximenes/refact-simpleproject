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
public class Usuario implements Serializable {

	private static final long serialVersionUID = -5469692683914786515L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@NotNull(message = "{usuario.nome.vazio}")
	@Length(min = 3, max = 15, message = "{usuario.nome.tamanho}")
	private String nome;

	@NotNull(message = "{usuario.sobrenome.vazio}")
	@Length(min = 3, max = 55, message = "{usuario.sobrenome.tamanho}")
	private String sobrenome;

	@NotNull(message = "{usuario.email.vazio}")
	@Length(min = 6, max = 55, message = "{usuario.email.tamanho}")
	@Email(message = "{usuario.email.verifica}")
	@Column(unique = true)
	private String email;

	@Enumerated(EnumType.STRING)
	@NotNull(message = "{usuario.tipo.vazio}")
	private TipoUsuario tipo;

	@NotNull(message = "{usuario.login.vazio}")
	@Length(min = 4, max = 30, message = "{usuario.login.tamanho}")
	@Pattern(regexp = "[a-z0-9_]+", message = "{usuario.login.verifica}")
	private String login;

	@NotNull(message = "{usuario.senha.vazio}")
	@Length(min = 4, max = 30, message = "{usuario.senha.tamanho}")
	private String senha;

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

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public TipoUsuario getTipo() {
		return tipo;
	}

	public void setTipo(TipoUsuario tipo) {
		this.tipo = tipo;
	}
}
