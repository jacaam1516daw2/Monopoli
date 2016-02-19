package beans;

import java.io.Serializable;

public class Dice implements Serializable {

    public int valor = 0;

    public Dice() {

    }

    public int getValor() {
        setValor(random());
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public int random() {
        return (int) Math.floor(Math.random() * 6 + 1);
    }

}
