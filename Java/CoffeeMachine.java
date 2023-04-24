package HomeWork;
import java.util.Scanner;

public class CoffeeMachine {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("Select your drink: ");
        System.out.println("1 - espresso");
        System.out.println("2 - americano");
        System.out.println("3 - cappuccino");
        System.out.println("4 - tea");
        int typeOfCoffee = sc.nextInt();
        sc.close();

//        if(typeOfCoffee == 1 ) {
//            espresso();
//        } else if (typeOfCoffee == 2) {
//            americano();
//        } else if (typeOfCoffee == 3) {
//            cappuccino();
//        } else if (typeOfCoffee == 4) {
//            System.out.println("We are preparing your tea");
//        }

        switch (typeOfCoffee) {
            case 1:
                espresso();
                break;

            case 2:
                americano();
                break;

            case 3:
                cappuccino();
                break;

            case 4:
                System.out.println("We are preparing your tea");
                break;

            default:
                System.out.println("This drink is not exist.Please pick another one");
        }

    }
    public static void espresso() {
        System.out.println("Make an espresso");
    }

    public static void americano() {
        espresso();
        System.out.println("adding a water");
        System.out.println("Your americano has been done");
    }

    public static void cappuccino() {
        espresso();
        System.out.println("adding a milk");
        System.out.println("Your cappuccino has been done");
    }
}
