public class ContaImposto extends ContaAbstrata {
    private static final double CPMF = 0.001;
    
    public ContaImposto(String numero) {
        super(numero);
    }

    public void debitar(double valor) {
        double imposto = valor * CPMF;
        double total = valor + imposto;
        super.setSaldo(this.getSaldo() - total);
    }
}        
        
        
       
// super.debitar(valor + imposto); // Não é conseitualmente correto, porque interfere na superclasse
// Classe abstrata: não define alguns métodos para que outras classes criem seus próprios
// Numa Interface é tudo abstrato