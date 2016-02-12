package beans;

public enum ColorEnum {
    
    MARRON(0.4, "marron"),
    CELESTE(0.6, "celeste"),
    ROSA(0.9, "rosa"),
    NARANJA(1.3, "naranja"),
    ROJO(1.8, "rojo"),
    AMARILLO(2.4, "amarillo"),
    VERDE(3.0, "verde"),
    AZUL(3.6, "azul");
    
    private double valor;
    private String d;
    private String hexCodigo;
    
    public double getValor() {
        return valor;
    }
    
    private ColorEnum(double valor, String d) { 
        this.valor = valor;
        this.d = d;
    }
    
}
