public class Produto {
    private String descricao;
    private double valor;
    private int quantidade;

    public Produto(String descricao, double valor, int quantidade) {
        this.descricao = descricao;
        this.valor = valor;
        this.quantidade = quantidade;
    }

    public String getDescricao() {
        return descricao;
    }
}
