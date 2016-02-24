package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Casilla;
import beans.CasillaNormal;
import beans.Dice;
import beans.Jugador;
import beans.Partida;
import utils.MonopoliUtils;

/**
 * Servlet implementation class GameController
 */
@WebServlet(name = "GameController", urlPatterns = { "/GameController" })
public class GameController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GameController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at:").append(request.getContextPath());

		String action = "";
		String ruta = "/principal.jsp";

		// Miramos la accion a realizar
		if (request.getParameter("jugar") != null) {
			action = "jugar";
		} else if (request.getParameter("tirar") != null) {
			action = "tirar";
		} else if (request.getParameter("alta") != null) {
			action = "alta";
		} else if (request.getParameter("comprar") != null) {
			action = "comprar";
		} else if (request.getParameter("edificar") != null) {
			action = "edificar";
		} else {

		}

		// Enviamos al metodo correspondiente seguin la accion a realizar
		switch (action) {
		case "alta":
			ruta = goToPlayers(request);
			break;
		case "jugar":
			goToPlayers(request);
			break;
		case "tirar":
			goToGame(request);
			break;
		case "comprar":
			goToBuy(request);
			break;
		case "edificar":
			goToBuild(request);
			break;
		default:
			break;
		}

		RequestDispatcher rd = request.getRequestDispatcher(ruta);
		rd.forward(request, response);
	}

	private void goToBuild(HttpServletRequest request) {
		HttpSession session = request.getSession();
		synchronized (session) { // no synchronized(this)

                        // para la persistencia de los datos recupera el objeto partida de la sesion
			Partida partida = (Partida) session.getAttribute("partida");
			if (partida == null) {
				partida = new Partida(); // si no hay partida (pq es la primera vez q se llama a esta funcion) la crea
			}

			List<Jugador> jugadores = null;

			// Miramos si ya hay jugadores creados
			if (partida.getJugadores() == null) {
				jugadores = new ArrayList<>();
			} else {
				jugadores = partida.getJugadores();
			}

                        // SOLO SI YA HAY JUGADORES (SINO, SALTA EL BUCLE DIRECTAMENTE)
			for (int i = 0; i < jugadores.size(); i++) {
				if (jugadores.get(i).getActivaEdificar().equals("enabled")) {
					jugadores.get(i).setActivaEdificar("disabled");
					for (CasillaNormal casillaNormal : jugadores.get(i).getCasillaNormales()) {
						if (casillaNormal.getNumero() == jugadores.get(i).getNewPosicion()) {
							if (casillaNormal.getCasas() < 5) {
								casillaNormal.setCasas(casillaNormal.getCasas() + 1);
								jugadores.get(i).setDinero(jugadores.get(i).getDinero() - 30);
								jugadores.get(i).setInfoPlayer("Acabas de edificar en la casilla que has caido");
							}
						}
					}
				}
			}
                        // ---------------------

			// Seteamos las variables de session y de envio a la pantalla
			partida.setJugadores(jugadores);
			request.setAttribute("partida", partida);
			session.setAttribute("partida", partida);
		}

	}

	private void goToBuy(HttpServletRequest request) {
		HttpSession session = request.getSession();
		synchronized (session) { // no synchronized(this)

			Partida partida = (Partida) session.getAttribute("partida");
			if (partida == null) {
				partida = new Partida();
			}

			List<Jugador> jugadores = null;

			// Miramos si ya hay jugadores creados
			if (partida.getJugadores() == null) {
				jugadores = new ArrayList<>();
			} else {
				jugadores = partida.getJugadores();
			}

			for (int i = 0; i < jugadores.size(); i++) {
				if (jugadores.get(i).getActivaComprar().equals("enabled")) {
					jugadores.get(i).setActivaComprar("disabled");
					CasillaNormal casillaNormal = new CasillaNormal();
					casillaNormal.setCasas(0);
					casillaNormal.setNumero(jugadores.get(i).getNewPosicion());
					casillaNormal.setPropietario(jugadores.get(i));
					casillaNormal.setPrecio(30);
					if(jugadores.get(i).getCasillaNormales() == null){
						List<CasillaNormal> casillas = new ArrayList<>();
						jugadores.get(i).setCasillaNormales(casillas);
					}
					jugadores.get(i).getCasillaNormales().add(casillaNormal);
					jugadores.get(i).setDinero(jugadores.get(i).getDinero() - casillaNormal.getPrecio());
					jugadores.get(i).setInfoPlayer("Acabas de comprar la casilla en la que has caido");
				}
			}

			// Seteamos las variables de session y de envio a la pantalla
			partida.setJugadores(jugadores);
			request.setAttribute("partida", partida);
			session.setAttribute("partida", partida);
		}
	}

	private void goToGame(HttpServletRequest request) {
		// Revisamos la session para recuperar la lista de jugadores
		HttpSession session = request.getSession();
		synchronized (session) { // no synchronized(this)

			Partida partida = (Partida) session.getAttribute("partida");
			if (partida == null) {
				partida = new Partida();
			}

			List<Jugador> jugadores = null;

			// Miramos si ya hay jugadores creados
			if (partida.getJugadores() == null) {
				jugadores = new ArrayList<>();
			} else {
				jugadores = partida.getJugadores();
			}

			// Recuperamos el valor del dado
			Dice dice = new Dice();
			int dado = dice.getValor();
			partida.setDado(dado);

			MonopoliUtils monopoliUtils = new MonopoliUtils();

			Integer turno = null;
			// Gestionamos la posicion del jugador con el resultado de los dados
			for (int i = 0; i < jugadores.size(); i++) {
				if (jugadores.get(i).isTurno()) {
					turno = i;
					// Comprobamos que no se pase del maximo de casillas, si
					// es asi nos quedamos con la diferencia
					jugadores.get(i).setOldPosicion(jugadores.get(i).getNewPosicion());
					if (jugadores.get(i).getNewPosicion() + dado < 26) {
						jugadores.get(i).setNewPosicion(jugadores.get(i).getNewPosicion() + dado);
					} else {
						int recalcular = jugadores.get(i).getNewPosicion() + dado;
						jugadores.get(i).setNewPosicion(recalcular = recalcular - 26);

					}
				}
				monopoliUtils.infoCasilla(request, jugadores.get(i), partida);
			}

			// Modificamos el flag de la clase jugador para pasar el turno al
			// siguiente jugador
			jugadores.get(turno).setTurno(Boolean.FALSE);
			if ((turno + 1 < jugadores.size()) && (jugadores.get(turno + 1).getTurnosSinTirar() == 0)) {
				jugadores.get(turno + 1).setTurno(Boolean.TRUE);
			} else if ((turno + 2 < jugadores.size()) && (jugadores.get(turno + 2).getTurnosSinTirar() == 0)) {
				jugadores.get(turno + 2).setTurno(Boolean.TRUE);
			} else if ((turno + 3 < jugadores.size()) && (jugadores.get(turno + 3).getTurnosSinTirar() == 0)) {
				jugadores.get(turno + 3).setTurno(Boolean.TRUE);
			} else {
				jugadores.get(0).setTurno(Boolean.TRUE);
			}

			// Seteamos las variables de session y de envio a la pantalla
			partida.setJugadores(jugadores);
			request.setAttribute("partida", partida);
			session.setAttribute("partida", partida);
		}
	}

	public String goToPlayers(HttpServletRequest request) {
		// Revisamos la session para ver si ya tenemos algun jugador o la
		// creamos si es la primera vez
		HttpSession session = request.getSession();
		synchronized (session) { // no synchronized(this)
			Boolean turno = Boolean.FALSE;
			Partida partida = (Partida) session.getAttribute("partida");
			if (partida == null) {
				partida = new Partida();
			}

			List<Jugador> jugadores = null;

			// Miramos si ya hay jugadores creados
			if (partida.getJugadores() == null) {
				jugadores = new ArrayList<>();
				turno = Boolean.TRUE;
			} else {
				jugadores = partida.getJugadores();
			}

			// Creamos un objeto jugador y recuperamos los parametros de
			// interes
			Jugador jugador = new Jugador();
			jugador.setTurno(turno);
			jugador.setActivaComprar("disabled");
			jugador.setActivaEdificar("disabled");
			jugador.setDinero(MonopoliUtils.DINERO_INICIAL);
			jugador.setTurnosSinTirar(0);
			jugador.setNick(request.getParameter("nick"));
			jugador.setNewPosicion(1);
			jugador.setAvatar("images/player" + request.getParameter("avatar") + ".png");

			// En caso de refresco de pantalla o rellamada miramos que no se
			// creen nuevos jugadores
			Boolean exist = Boolean.FALSE;
			for (Jugador player : jugadores) {
				if (player.getNick().equals(jugador.getNick())) {
					exist = Boolean.TRUE;
				}
			}

			// Si existen ya no los añadimos
			if (!exist && !jugador.getNick().equals("") && jugador.getNick() != null) {
				jugadores.add(jugador);
			}

			// Damos el primer valor al dado
			Dice dice = new Dice();
			int dado = dice.getValor();
			partida.setDado(dado);

			// Seteamos las variables de session y de envio a la pantalla
			partida.setJugadores(jugadores);
			request.setAttribute("partida", partida);
			session.setAttribute("partida", partida);
		}
		return "/players.jsp";
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
