package com.examen.modelo;

public class Usuario {
	private int nit;
	private String login;
	private String pass;
	private String nombre;
	private String apellido;
	private String rol;
	public Usuario(int nit, String login, String pass, String nombre, String apellido, String rol) {
		super();
		this.nit = nit;
		this.login = login;
		this.pass = pass;
		this.nombre = nombre;
		this.apellido = apellido;
		this.rol = rol;
	}
	public int getNit() {
		return nit;
	}
	public void setNit(int nit) {
		this.nit = nit;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getRol() {
		return rol;
	}
	public void setRol(String rol) {
		this.rol = rol;
	}
	@Override
	public String toString() {
		return "Usuario [nit=" + nit + ", login=" + login + ", pass=" + pass + ", nombre=" + nombre + ", apellido="
				+ apellido + ", rol=" + rol + "]";
	}
	
	  
}
