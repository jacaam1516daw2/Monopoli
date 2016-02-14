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

import beans.Dice;
import beans.Jugador;
import beans.Partida;

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
		default:
			break;
		}

		RequestDispatcher rd = request.getRequestDispatcher(ruta);
		rd.forward(request, response);
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

			Integer turno = null;
			// Gestionamos la posicion del jugador con el resultado de los dados
			for (int i = 0; i < jugadores.size(); i++) {
				if (jugadores.get(i).isTurno()) {
					turno = i;
					// Comprobamos que no se pase del maximo de casillas, si es
					// asi nos quedamos con la diferencia
					if (jugadores.get(i).getPosicion() + dado < 24) {
						jugadores.get(i).setPosicion(jugadores.get(i).getPosicion() + dado);
					} else {
						int recalcular = jugadores.get(i).getPosicion() + dado;
						jugadores.get(i).setPosicion(recalcular = recalcular - 24);

					}
				}
			}

			// Modificamos el flag de la clase jugador para pasar el runo al
			// siguiente jugador
			jugadores.get(turno).setTurno(Boolean.FALSE);
			if (turno + 1 < jugadores.size()) {
				jugadores.get(turno + 1).setTurno(Boolean.TRUE);
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
			jugador.setNick(request.getParameter("nick"));
			jugador.setPosicion(1);
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
