package br.com.ximenes.simpleproject.security;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import br.com.ximenes.simpleproject.model.TipoUsuario;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface Protecao {
	TipoUsuario[] tipo();
}
