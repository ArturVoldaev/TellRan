package HomeWork;

public class PizzaCalories {
    public double Spizza;

    // S = p * (d^2 / 4)
    public PizzaCalories(int d) {
        double result = pi() * (pow(d) / 4);
        System.out.println("S of pizza = " + result + " cm^3");
        this.Spizza = result;
    }

    private double pow(int d) {
        return Math.pow(d, 2);
    }

    private double pi() {
        return Math.PI;
    }
}
