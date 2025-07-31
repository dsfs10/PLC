package ListaJAVA.Questão1;

public class Main {
    public static void main(String[] args) {

        Queue.push(new Crianca(5, "Crianca 1"));
        Queue.push(new Adulto(30, "Adulto 1"));
        Queue.push(new Crianca(6, "Crianca 2"));
        Queue.push(new Adulto(20, "Adulto 2"));
        Queue.push(new Crianca(8, "Criaca 3"));

        while(!Queue.isEmpty()) {
            Pessoa p = Queue.pop();
            System.out.println(p);
        }
    }
}
