public abstract class ContaAbstrata {
    private String numero;
    private double saldo;

    public ContaAbstrata (String numero) {
        this.numero = numero;
        this.saldo = 0.0;
    }

    public void creditar(double valor) {
        this.saldo = this.saldo + valor;
    }

    public double getSaldo() {
        return this.saldo;
    }

    public String getNumero() {
        return this.numero;
    }

    protected void setSaldo(double saldo) { // Protected é visível apenas na classe e nas subclassses dela
        this.saldo = saldo;
    }
    
    public abstract void debitar(double valor); // Tá em aberto
}

// Normalmente uma classe abstrata tem um método abstrato, mas não é obrigatório