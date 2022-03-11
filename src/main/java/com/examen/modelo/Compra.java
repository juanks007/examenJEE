package com.examen.modelo;

public class Compra {
	private int id;
	private int idProd;
	private float costo;
	private int cantidad;
	private int nit;
	public Compra(int id, int idProd, float costo, int cantidad, int nit) {
		super();
		this.id = id;
		this.idProd = idProd;
		this.costo = costo;
		this.cantidad = cantidad;
		this.nit = nit;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdProd() {
		return idProd;
	}
	public void setIdProd(int idProd) {
		this.idProd = idProd;
	}
	public float getCosto() {
		return costo;
	}
	public void setCosto(float costo) {
		this.costo = costo;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public int getNit() {
		return nit;
	}
	public void setNit(int nit) {
		this.nit = nit;
	}
	@Override
	public String toString() {
		return "Compra [id=" + id + ", idProd=" + idProd + ", costo=" + costo + ", cantidad=" + cantidad + ", nit="
				+ nit + "]";
	}
	
	
}
