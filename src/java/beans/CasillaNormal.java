package beans;

import java.io.Serializable;

public class CasillaNormal extends Casilla implements Serializable {
    
    private double precio;
    private int casas;
    private ColorEnum color;
    
    public CasillaNormal(String nombre, String color) {
        super(nombre);
        this.precio = calcularPrecio();
    }
    
    /**
     * Cálculo dinámico del precio de las casillas.
     * Falta por ponerle que cuente las casas también.
     * 
     * @return 
     */
    private double calcularPrecio() {
        return 100*color.getValor();
    }
    
}
