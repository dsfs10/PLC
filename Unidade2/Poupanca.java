public class Poupanca extends Conta{ // subclasse extends superclasse; a subclasse tem que manter as propriedades da super, mas pode ter mais
    public Poupanca(String numero) {
        super(numero); // chamando o construtor Conta com a String numero da conta
    } 

    public void renderJuros(double taxa) { // esses this são opcionais
        double juros = this.getSaldo() * taxa;
        this.creditar(juros); // se colocar super no lugar do this, vai direto no método creditar da superclasse (pode também)
    }

}