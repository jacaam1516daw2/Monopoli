package beans;

import java.io.Serializable;

public class Dice implements Serializable {

    public int valor = 0;

    public Dice() {

    }

    public int getValor() {
        random();
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public void random() {
        this.valor = (int) Math.floor(Math.random() * 6 + 1);

    }

}
