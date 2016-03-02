package utils;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import beans.CasillaNormal;
import beans.Jugador;
import beans.Partida;

public class MonopoliUtils {
	public static final float DINERO_INICIAL = 500f;
	private static final int ESTADO_PAGAR = 1;
	private static final int ESTADO_COMPRAR = 2;
	private static final int ESTADO_EDIFICAR = 3;
	private static final int ESTADO_CARCEL = 4;
	private static final int ESTADO_COBRAR_IMPUESTO = 5;
	private int casasPropietario = 0;

	Jugador propietario = new Jugador();

	public void infoCasilla(HttpServletRequest request, Jugador jugador, Partida partida) {
		int newPosicion = jugador.getNewPosicion();
		int oldPosicion = jugador.getOldPosicion();

		if (jugador.getNewPosicion() == 1 || jugador.getNewPosicion() == 8 || jugador.getNewPosicion() == 1) {
			jugador.setActivaComprar("disabled");
		}

		if (jugador.getNewPosicion() == 11 || jugador.getNewPosicion() == 5 || jugador.getNewPosicion() == 4
				|| jugador.getNewPosicion() == 17 || jugador.getNewPosicion() == 18 || jugador.getNewPosicion() == 24) {
			jugador.setActivaEdificar("disabled");
		}

		// Control pasar por la casilla de Salida
		if (jugador.getDinero() != DINERO_INICIAL) {
			if (oldPosicion >= 22 && newPosicion <= 5) {
				jugador.setDinero(jugador.getDinero() + 20);
			}
		}

		// Control casillas normales Comprar Pagar Edificar
		if ((newPosicion >= 2 && newPosicion <= 4) || (newPosicion == 6) || (newPosicion == 7)
				|| (newPosicion >= 9 && newPosicion <= 13) || (newPosicion == 15) || (newPosicion == 16)
				|| (newPosicion >= 18 && newPosicion <= 20) || (newPosicion >= 22 && newPosicion <= 26)) {

			propietario = propietarioCasillaNormal(partida.getJugadores(), newPosicion);
			jugador.setEstado(compruebaEstado(jugador.getNick()));

			if (jugador.getEstado() == ESTADO_PAGAR) {
				float pago = calcularPrecio(newPosicion, casasPropietario);
				jugador.setDinero(jugador.getDinero() - pago);
				propietario.setDinero(propietario.getDinero() + pago);
				jugador.setInfoPlayer("Acabas de pagar al propietario " + propietario.getNick() + " " + pago
						+ " euros por caer en su casilla");
				propietario.setInfoPlayer("Acabas de cobrar del jugador " + jugador.getNick() + " " + pago
						+ " euros por que ha caido en una casilla tuya");

			} else if (jugador.getEstado() == ESTADO_COMPRAR) {
				jugador.setInfoPlayer("Si quieres comprar pulsa el botón comprar");
				jugador.setActivaComprar("enabled");
			} else if (jugador.getEstado() == ESTADO_EDIFICAR) {
				jugador.setInfoPlayer("Si quieres edificar pulsa el botón comprar");
				jugador.setActivaEdificar("enabled");
			} else {
				jugador.setActivaComprar("disabled");
			}
		}

		// Control casillas Impuestos para pagar
		if ((newPosicion == 5) || (newPosicion == 17)) {
			jugador.setDinero(jugador.getDinero() - 20);
			partida.setImpuesto(partida.getImpuesto() + 20);
			jugador.setInfoPlayer("Acabas de pagar un impuesto de 20 euros");
		}

		// Casilla Policia vaya a la carcel
		if (newPosicion == 21) {
			jugador.setNewPosicion(8);
			jugador.setEstado(ESTADO_CARCEL);
			jugador.setTurnosSinTirar(3);
			jugador.setInfoPlayer(
					"Vaya directamente a la carcel sin pasar por la casilla de Salida y sin cobrar los 20 euros durante 3 turnos");
		}

		// Control casillas Cobrar Impuestos
		if (newPosicion == 14) {
			jugador.setEstado(ESTADO_COBRAR_IMPUESTO);
			jugador.setInfoPlayer("Cobras un total de impuestos recaudados de " + partida.getImpuesto() + " euros");
			partida.setImpuesto(0);
			jugador.setDinero(jugador.getDinero() + partida.getImpuesto());
		}
	}

	private int compruebaEstado(String nick) {
		if ((propietario.getNick() != null) && (!propietario.getNick().equals(nick))) {
			return ESTADO_PAGAR;
		} else if ((propietario.getNick() != null) && (propietario.getNick().equals(nick))) {
			return ESTADO_EDIFICAR;
		} else {
			return ESTADO_COMPRAR;
		}
	}

	private Jugador propietarioCasillaNormal(List<Jugador> jugadores, int posicion) {
		propietario = new Jugador();
		for (Jugador propietario : jugadores) {
			List<CasillaNormal> casillaNormales = propietario.getCasillaNormales();
			if (casillaNormales != null) {
				for (CasillaNormal casillaNormal : casillaNormales) {
					if (casillaNormal.getNumero() == posicion) {
						casasPropietario = casillaNormal.getCasas();
						return propietario;
					}
				}
			}
		}
		return propietario;
	}

	public float calcularPrecioEdificio(int posicion, int numCasas) {

		float precio = precio(posicion);

		if (numCasas < 4)
			return precio;

		return precio * 4;

	}

	public float calcularPrecio(int posicion) {

		float precio = precio(posicion);
		return precio;

	}

	public float calcularPrecio(int posicion, int numCasas) {

		float precio = (precio(posicion)) * (numCasas + 1);
		return precio;

	}

	private float precio(int posicion) {
		return 15 + 5 * posicion;
	}
}