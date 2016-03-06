package beans;

import java.io.Serializable;
import java.util.List;
import javax.ejb.Stateless;
@Stateless
public class Partida implements Serializable {
	private List<Jugador> jugadores;
	private int dado;
	private float impuesto = 0f;
	private int ronda = 1;
	
        public void incrmentaRonda() {
            this.setRonda(getRonda()+1);
        }
        
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

	public float getImpuesto() {
		return impuesto;
	}

	public void setImpuesto(float impuesto) {
		this.impuesto = impuesto;
	}

	public int getRonda() {
		return ronda;
	}

	public void setRonda(int ronda) {
		this.ronda = ronda;
	}
}
