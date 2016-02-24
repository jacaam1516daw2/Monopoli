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

	Jugador propietario = new Jugador();

        /**
         * Según la casilla en la que ha caído el jugador: si pasa por la salida, suma
         * 20 euros al jugador; si la casilla es de algún otro jugador, realiza la
         * transacción de dinero entre ambos; si es una casilla especial de impuestos, 
         * cobra al jugador el dinero especificado; si es una casilla de policía, mueve
         * al jugador hasta la casilla de la cárcel, y si la casilla es de cobro de
         * impuestos, el jugador cobra el dinero especificado. La función también
         * mira si el jugador va a comprar una casilla o edificar en ella, para lo que
         * define un indicador String en el objeto jugador.
         * 
         * @param request Petición al servlet.
         * @param jugador Jugador que está jugando su turno.
         * @param partida Objeto partida sobre el que está funcionando la aplicación.
         */
	public void infoCasilla(HttpServletRequest request, Jugador jugador, Partida partida) {
		int newPosicion = jugador.getNewPosicion();
		int oldPosicion = jugador.getOldPosicion();

		// Control pasar por la casilla de Salida
		compruebaCasillaSalida(jugador, newPosicion, oldPosicion);

		// Control casillas normales Comprar Pagar Edificar
                if (compruebaCasilla(newPosicion) == 0) {
                    controlCasillaNormal(jugador, partida, newPosicion);
                }

		// Control casillas Impuestos para pagar
		if (compruebaCasilla(newPosicion) == ESTADO_PAGAR) {
                    controlCasillaPagar(jugador, partida);
                }

		// Casilla Policia vaya a la carcel
		if (compruebaCasilla(newPosicion) == ESTADO_CARCEL) {
			arrancaCharlyQueVienenLosMaderos(jugador);
		}

		// Control casillas Cobrar Impuestos
		if (compruebaCasilla(newPosicion) == ESTADO_COBRAR_IMPUESTO) {
                    controlCasillaCobrar(jugador, partida);
		}
                
                if (compruebaCasilla(newPosicion) < 0) {
                    // TODO: enviar a una página de error (?)
                }
                
	}

        /**
         * La madera ha llamado a tu casa por defraudar 40 millones a hacienda.
         * Esta función te envía al sitio al que perteneces, por explotador y
         * escoria capitalista. Prepare your anus.
         * 
         * @param jugador Jugador condenado a 3 turnos de cárcel por impago de impuestos al Estado.
         */
        private void arrancaCharlyQueVienenLosMaderos(Jugador jugador) {
            jugador.setNewPosicion(8);
            jugador.setEstado(ESTADO_CARCEL);
            jugador.setTurnosSinTirar(3);
            jugador.setInfoPlayer(
                            "Vaya directamente a la carcel sin pasar por la casilla de Salida y sin cobrar los 20 euros durante 3 turnos");
        }
        
        /**
         * Controla el proceso de cobrar los impuestos guardados.
         * 
         * @param jugador Jugador afortunado.
         * @param partida Objeto partida sobre el que está funcionando la aplicación.
         */
        private void controlCasillaCobrar(Jugador jugador, Partida partida) {
            jugador.setEstado(ESTADO_COBRAR_IMPUESTO);
            jugador.setInfoPlayer("Cobras todo los impuestos recaudados");
            jugador.setDinero(jugador.getDinero() + partida.getImpuesto());
        }
        
        /**
         * Controla el proceso de pagar impuestos.
         * 
         * @param jugador Jugador que va a pagar. Pobrecillo.
         * @param partida Objeto partida sobre el que está funcionando la aplicación.
         */
        private void controlCasillaPagar(Jugador jugador, Partida partida) {
            jugador.setDinero(jugador.getDinero() - 20);
            partida.setImpuesto(partida.getImpuesto() + 20);
            jugador.setInfoPlayer("Acabas de pagar un impuesto de 20 euros");
        }
        
        /**
         * Comprueba si el jugador ha pasado por la casilla de salida, y en caso
         * afirmativo (y siempre que no tenga la cifra de dinero inicial del juego)
         * le da 20 eurillos para droguita de la buena.
         * 
         * @param jugador Jugador que juega su turno.
         * @param newPosicion Casilla donde ha caído el jugador.
         * @param oldPosicion Casilla de donde viene el jugador.
         */
        private void compruebaCasillaSalida(Jugador jugador, int newPosicion, int oldPosicion) {
            if (jugador.getDinero() != DINERO_INICIAL) {
                if (oldPosicion >= 22 && newPosicion <= 5) {
                        jugador.setDinero(jugador.getDinero() + 20);
                }
            }
        }
        
        /**
         * Controla los procesos de pago, compra y edificación del jugador
         * cuando ha caído en una casilla normal (una calle).
         * 
         * @param jugador Jugador que juega su turno.
         * @param partida Objeto partida sobre el que está funcionando la aplicación.
         * @param newPosicion Casilla donde ha caido el jugador.
         */
        private void controlCasillaNormal(Jugador jugador, Partida partida, int newPosicion) {
            propietario = propietarioCasillaNormal(partida.getJugadores(), newPosicion);
            jugador.setEstado(compruebaEstado(jugador.getNick()));

            switch (jugador.getEstado()) {
                case ESTADO_PAGAR:
                    jugador.setDinero(jugador.getDinero() - 30);
                    propietario.setDinero(propietario.getDinero() + 30);
                    jugador.setInfoPlayer(
                            "Acabas de pagar al propietario " + propietario.getNick() + " 30 euros por caer en su casilla");
                    propietario.setInfoPlayer("Acabas de cobrar del jugador " + jugador.getNick()
                            + " 30 euros por que ha caido en una casilla tuya");
                    break;
                case ESTADO_COMPRAR:
                    jugador.setInfoPlayer("Si quieres comprar pulsa el botón comprar");
                    jugador.setActivaComprar("enabled");
                    break;
                case ESTADO_EDIFICAR:
                    jugador.setInfoPlayer("Si quieres edificar pulsa el botón comprar");
                    jugador.setActivaEdificar("enabled");
                    break;
                default:
                    jugador.setActivaComprar("disabled");
                    break;
            }
        }
        
        /**
         * Comprueba la casilla en la que ha caído el jugador.
         * 
         * @param newPosicion Casilla en la que ha caído el jugador.
         * @return String con el código correspondiente al tipo de casilla.
         */
        private int compruebaCasilla(int newPosicion) {
            
            if (newPosicion == 14)
                return ESTADO_COBRAR_IMPUESTO;
            if (newPosicion == 21)
                return ESTADO_CARCEL;
            if ((newPosicion == 5) || (newPosicion == 17))
                return ESTADO_PAGAR;
            if ((newPosicion >= 2 && newPosicion <= 4) || (newPosicion == 6) || (newPosicion == 7)
				|| (newPosicion >= 9 && newPosicion <= 13) || (newPosicion == 15) || (newPosicion == 16)
				|| (newPosicion >= 18 && newPosicion <= 20) || (newPosicion >= 22 && newPosicion <= 26)) {
                return 0;
            }
            return -1;
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
						return propietario;
					}
				}
			}
		}
		return propietario;
	}
}