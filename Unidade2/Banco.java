public class Banco {
    private Conta[] contas;
    private int indice;
    private final double taxa = 0.01; // final eh tipo uma constante
    
    public Banco(Conta[] contas) {
        this.contas = new Conta[100];
        this.indice = 0;
    }

    public void cadastrarConta(Conta c) {
        contas[indice] = c;
        indice = indice + 1;
    }

    public void getSaldo(String numero) {
        Conta c = this.procurarConta(numero);
        c.getSaldo();
    }

    public void creditarConta(String numero, double valor) {
        Conta c;
        c = this.procurarConta(numero);
        c.creditar(valor);
    }

    public void debitarConta(String numero, double valor) {
        Conta c;
        c = this.procurarConta(numero);
        c.debitar(valor);
    }

    public void cadastrarPoupanca(Poupanca p) {
        // poupancas[indiceP] = p;
        // indiceP = indiceP + 1;
    }

    public void creditarPoupanca(String numero, double valor) {

    }

    // private Conta procura(String numero) {
    //     boolean achou = false;
    //     for(int i = 0; achou || i < indice; i++) {
    //         if(contas[i].getNumero().equals(numero)) {
    //             achou = true;
    //             return contas[i];
    //         }
    //         else {
    //             i = i + 1;
    //         }
    //     }

    //     throw new RuntimeException("Não achou");
    // }

    private Conta procurarConta(String numero) {
        int i = 0;
        boolean achou = false;
        Conta resposta = null;
        while((!achou) && (i < indice)) {
            if (contas[i].getNumero().equals(numero)) {
                achou = true;
                resposta = contas[i];
            } 
            else {
                i = i + 1;
            } 
        }
        if(!achou)
            throw new RuntimeException("Não achou");
        return resposta;
    }

    public void renderJuros(String numero) {
        Conta c;
        c = this.procurarConta(numero);
        if(c instanceof Poupanca) {
            ((Poupanca) c).renderJuros(taxa); 
        }
    }

    public void renderBonus(String numero) {
        Conta c;
        c = this.procurarConta(numero);
        if(c instanceof ContaEspecial) {
            ((ContaEspecial) c).renderBonus();
        }
    }

    public void transferir(String numero1, String numero2, double valor) {
        Conta c1 = procurarConta(numero1);
        Conta c2 = procurarConta(numero2);

        c1.debitar(valor);
        c2.creditar(valor);
    }
}