package Lesson1;

import java.util.Arrays;
import java.util.Scanner;
import java.util.Random;

public class HomeWorkBuble {
  public static void main(String[] args) {

    Scanner sc = new Scanner(System.in);
    System.out.println("Inter a length of array");

    int number = sc.nextInt();
    sc.close();

    int[] myArray = new int[number];

    for (int i=0; i <= number - 1; i++) {
      Random rand = new Random();
      int randInt = rand.nextInt(100);
      myArray[i] = randInt;
    }

    System.out.println("We created a array from "+ number + " elements"  );
    System.out.println(Arrays.toString(myArray));

    for (int i = myArray.length-1; i >= 1; i--) {
      int[] tempArray;
      tempArray=myArray;
      for (int n=0; n < i; n++) {
        if (tempArray[n] > tempArray[n + 1]) {
          int shift = tempArray[n];
          tempArray[n] = tempArray[n + 1];
          tempArray[n + 1] = shift;
        }
        System.out.println(Arrays.toString(tempArray));
      }
      myArray=tempArray;
    }
  }
}

// 	START
//  WRITE create an initial array and amount elements of the initial array;
//  FOR i=0 to i >= number - 1
//    generate random numbers
//    WRITE in the initial array;
//  READ show the initial array
//  FOR i = myArray.length-1 to i >= 1
//    WRITE create a temporary array
//    WRITE the temporary array = the initial array
//    FOR n=0 to n < i
//      IF current element of temporary array  > next element of temporary array THEN replace them
//      READ show the temporary array
//    WRITE the initial array = the temporary array
//  END