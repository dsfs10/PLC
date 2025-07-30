public class Fila <T> { 
    private T[] dados;
    private int primeiro, ultimo;

    public Fila() { 
        dados = (T[]) new Object[100]; 
    }

    public void insere(T valor) { 
        dados[ultimo++]=valor; 
    }

    public T remove() throws ExceptionFV{ 
        if(primeiro == ultimo) throw new ExceptionFV();

        return (dados[primeiro++]); 
    }

}