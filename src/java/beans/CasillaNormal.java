package beans;

import java.io.Serializable;

public class CasillaNormal implements Serializable {

	private float precio;
	private int casas;
	private ColorEnum color;
	private Jugador propietario;
	private int numero;
	private String nombre;

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getNumero() {
		return numero;
	}

	public String getNombre() {
		return nombre;
	}

	public float getPrecio() {
		return precio;
	}

	public void setPrecio(float precio) {
		this.precio = precio;
	}

	public int getCasas() {
		return casas;
	}

	public void setCasas(int casas) {
		this.casas = casas;
	}

	public ColorEnum getColor() {
		return color;
	}

	public void setColor(ColorEnum color) {
		this.color = color;
	}

	public CasillaNormal() {
		super();
	}

	/**
	 * Cálculo dinámico del precio de las casillas. Falta por ponerle que cuente
	 * las casas también.
	 * 
	 * @return
	 */
	private double calcularPrecio() {
		return 100 * color.getValor();
	}

	public Jugador getPropietario() {
		return propietario;
	}

	public void setPropietario(Jugador propietario) {
		this.propietario = propietario;
	}

}
