public abstract class Forma {
    public double PosicaoX, PosicaoY;

    public abstract double area();

    public void move(double deltaX, double deltaY) {
        PosicaoX += deltaX;
        PosicaoY += deltaY;
    } 
}