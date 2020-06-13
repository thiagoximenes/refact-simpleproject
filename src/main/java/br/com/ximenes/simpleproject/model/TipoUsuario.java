package br.com.ximenes.simpleproject.model;

import javax.validation.constraints.NotNull;

public enum TipoUsuario {
	ADMIN("ADMIN"), NORMAL("NORMAL");
	
	@NotNull
	private String tipoUsuario;
	
	TipoUsuario (String tipoUsuario){  
        this.tipoUsuario = tipoUsuario;  
    } 
	
    public String getTipoUsuario(){  
        return tipoUsuario;  
    }  
    
    public void setUsuario(String tipoUsuario){
    	this.tipoUsuario = tipoUsuario;
    }
	
}