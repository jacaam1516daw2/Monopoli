package beans;

import java.io.Serializable;
import javax.ejb.Stateless;
@Stateless
public class CasillaNormal implements Serializable {

	private float precio;
	private int casas;
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

	public CasillaNormal() {
		super();
	}

	public Jugador getPropietario() {
		return propietario;
	}

	public void setPropietario(Jugador propietario) {
		this.propietario = propietario;
	}

}
