public class TestaPoupanca {
    public static void main(String[] args) {
        Poupanca poupanca;
        poupanca = new Poupanca("21.342-7");
        poupanca.creditar(500.87);
        poupanca.debitar(45.00);
        System.out.println(poupanca.getSaldo());
    }
}
