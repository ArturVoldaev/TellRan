package HomeWork;

import java.util.Scanner;

public class SecondsTimer {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Input a random integer in range from 0 to 28800: ");
        int a = sc.nextInt();

        System.out.println(a);
        int conventInHours = (int) Math.floor(a / 3600);
        String answer = conventInHours > 0 ? String.valueOf(conventInHours) : "Less than one hour";

        System.out.println("The rest time of the work day in seconds are - " + a);
        System.out.println("The rest time of the work day in full hours are - " + answer + " in " + a + " seconds");

        sc.close();
    }
}
