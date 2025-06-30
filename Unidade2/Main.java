public class Main {
    public static void main(String[] args) {
        String s1 = "ricardo";
        String s2 = "Ricardo";
        
        if (s1.equals(s2)) {
            System.out.println("igual");
        } else {
            System.out.println("diferente");
        }
        if (s1.equalsIgnoreCase(s2)) {
            System.out.println("igual");
        } else {
            System.out.println("diferente");
        }

    }
}

// Boa prática: todos os atributos de uma classe serem privados
