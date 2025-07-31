package ListaJAVA.Questão1;

public abstract class Pessoa implements Comparable<Pessoa>{
    protected Integer idade;
    protected String nome;

    public Pessoa(Integer idade, String nome) {
        this.idade = idade;
        this.nome = nome;
    }
    
    public abstract String getTicketType();
    
    public int compareTo(Pessoa pessoa) {
        return (this.idade - pessoa.idade);
    }

    public String getName() {
        return nome;
    }

    public Integer getAge() {
        return idade;
    }

    public String toString() {
        return nome + ":" + idade + getTicketType();
    }
}
