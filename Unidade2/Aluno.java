public class Aluno {
    private String nome;
    private String cpf;
    private int idade;
    private Curso curso;

    public Aluno(String nome, String cpf, int idade, Curso curso) {
        this.nome = nome;
        this.cpf = cpf;
        this.idade = idade;
        this.curso = curso;
    }

    public String getNome() {
        return this.nome;
    }

    public String getCPF() {
        return this.cpf;
    }

    public int getIdade() {
        return this.idade;
    }

    public Curso getCurso() {
        return this.curso;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCPF(String cpf) {
        this.cpf = cpf;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public void setCurso(Curso curso) {
        this.curso = curso;
    }

}
