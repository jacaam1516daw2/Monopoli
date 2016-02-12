package beans;

import java.util.List;

public abstract class Casilla {
    
    private int numero;
    private String nombre;
    private List<Jugador> jugadores;

    public Casilla(String nombre) {
        setNombre(nombre);
    }
    
    public void setNumero(int numero) {
        this.numero = numero;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setJugadores(List<Jugador> jugadores) {
        this.jugadores = jugadores;
    }

    public int getNumero() {
        return numero;
    }

    public String getNombre() {
        return nombre;
    }

    public List<Jugador> getJugadores() {
        return jugadores;
    }
    
    
    
}
