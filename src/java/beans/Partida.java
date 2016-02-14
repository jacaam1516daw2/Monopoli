package beans;

import java.io.Serializable;
import java.util.List;

public class Partida implements Serializable {
	private List<Jugador> jugadores;
	private int dado;

	public List<Jugador> getJugadores() {
		return jugadores;
	}

	public void setJugadores(List<Jugador> jugadores) {
		this.jugadores = jugadores;
	}

	public int getDado() {
		return dado;
	}

	public void setDado(int dado) {
		this.dado = dado;
	}
}
