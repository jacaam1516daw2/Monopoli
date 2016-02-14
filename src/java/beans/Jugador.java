package beans;

import java.io.Serializable;

public class Jugador implements Serializable {
	private String color;
	private String nick;
	private float dinero;
	private int estado;
	private String avatar;
	private int posicion;
	private Boolean turno;

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public float getDinero() {
		return dinero;
	}

	public void setDinero(float dinero) {
		this.dinero = dinero;
	}

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public int getPosicion() {
		return posicion;
	}

	public void setPosicion(int posicion) {
		this.posicion = posicion;
	}

	public Boolean isTurno() {
		return turno;
	}

	public void setTurno(Boolean turno) {
		this.turno = turno;
	}

}
