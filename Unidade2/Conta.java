public class Conta {
    private String numero; 
    private double saldo;
    
    public Conta(String numero, double saldo) { // Construtor
        this.numero = numero;
        this.saldo = saldo;
    }

    public Conta(String numero) { // Segundo construtor - tem que ter argumentos diferentes do primero, como ter apenas argumeto string numero
        this(numero, 0.0);
    }

    public void creditar(double valor) {
        saldo = saldo + valor;
    }

    public void debitar(double valor) {
        saldo = saldo - valor;
    }

    public double getSaldo() {
        return saldo;
    }
    public String getNumero() {
        return numero;
    }
}