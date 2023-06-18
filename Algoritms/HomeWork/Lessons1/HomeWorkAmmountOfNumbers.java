package Lesson1;

import java.util.Arrays;
import java.util.Scanner;

public class HomeWorkAmmountOfNumbers {
  public static void main(String[] args) {
    int result = 0;
    Scanner sc = new Scanner(System.in);
    System.out.println("Inter the first integer");

    int number1 = sc.nextInt();
    System.out.println("Inter the second integer");

    int number2 = sc.nextInt();
    System.out.println("Inter the third integer");

    int number3 = sc.nextInt();

    sc.close();

    int[] myArray = {number1, number2, number3};

    for (int i=0; i < myArray.length; i++) {
      result += myArray[i];
    }

    System.out.println(result);
  }
}
// 	START
//  WRITE 3 inter integers in a program;
//  WRITE create an array and put our integers and create a variable RESULT;
//  FOR i = 0 to i < myArray.length-1;
//    RESULT += myArray[i]
//  READ the variable RESULT;
//  END







