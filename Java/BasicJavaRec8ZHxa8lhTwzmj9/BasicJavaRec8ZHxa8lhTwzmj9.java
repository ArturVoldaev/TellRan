import HomeWork.PizzaCalories;

public class BasicJavaRec8ZHxa8lhTwzmj9 {
    public static void main(String[] args) {

        int caloriesInCm = 40;

       PizzaCalories smallPizza = new PizzaCalories(24);
       PizzaCalories bigPizza = new PizzaCalories(28);

       double delta = bigPizza.Spizza - smallPizza.Spizza;

       System.out.println("Delta cm^2 = " + delta + " cm^3");
       System.out.println("Amount of extra calories  - " + (Math.floor(delta * caloriesInCm)));
    }
}
