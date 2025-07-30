public class TestaFila {
    public static void main(String[] args) {    
        Fila <String> fs = new Fila<>();
        fs.insere("abc");
        fs.insere("def");

        Fila <Double> fdouble = new Fila<Double>();
        fdouble.insere(3.1);
        fdouble.insere(7.5);
    }
}
