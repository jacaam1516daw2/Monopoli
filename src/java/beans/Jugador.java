package beans;

import java.io.Serializable;
import java.util.List;

public class Jugador implements Serializable {	
	private String nick;
	private float dinero;
	private int estado;
	private String avatar;
	private int oldPosicion;
	private int newPosicion;
	private Boolean turno;
	private int turnoIcon;
	private String infoPlayer;
	private String activaComprar;
	private String activaEdificar;
	private int turnosSinTirar;

	private List<CasillaNormal> casillaNormales;	

        public String casillaActual(int pos) {
            for (CasillaNormal casilla : casillaNormales)
                if(casilla.getNumero() == pos)
                    return String.valueOf(pos);
            return casillaNormales.get(1).getNombre();
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

	public int getOldPosicion() {
		return oldPosicion;
	}

	public void setOldPosicion(int oldPosicion) {
		this.oldPosicion = oldPosicion;
	}

	public int getNewPosicion() {
		return newPosicion;
	}

	public void setNewPosicion(int newPosicion) {
		this.newPosicion = newPosicion;
	}

	public Boolean isTurno() {
		return turno;
	}

	public void setTurno(Boolean turno) {
		this.turno = turno;
	}

	public String getInfoPlayer() {
		return infoPlayer;
	}

	public void setInfoPlayer(String infoPlayer) {
		this.infoPlayer = infoPlayer;
	}

	public List<CasillaNormal> getCasillaNormales() {
		return casillaNormales;
	}

	public void setCasillaNormales(List<CasillaNormal> casillaNormales) {
		this.casillaNormales = casillaNormales;
	}

	public String getActivaComprar() {
		return activaComprar;
	}

	public void setActivaComprar(String activaComprar) {
		this.activaComprar = activaComprar;
	}

	public String getActivaEdificar() {
		return activaEdificar;
	}

	public void setActivaEdificar(String activaEdificar) {
		this.activaEdificar = activaEdificar;
	}

	public int getTurnosSinTirar() {
		return turnosSinTirar;
	}

	public void setTurnosSinTirar(int turnosSinTirar) {
		this.turnosSinTirar = turnosSinTirar;
	}

	public int getTurnoIcon() {
		return turnoIcon;
	}

	public void setTurnoIcon(int turnoIcon) {
		this.turnoIcon = turnoIcon;
	}

}
