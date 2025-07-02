public class ContaComGerador {
    private int numero;
    private double saldo;
    private static int proximo = 0; // Igual para todas as contas
    public ContaComGerador() {
    this.numero = ContaComGerador.getProximo();
    this.saldo = 0.0;
    }
    private static int getProximo() {
    proximo = proximo + 1;
    return proximo;
    }
    // ...
}