package homework3;

import java.util.Arrays;

public class HomeWork3 {
  public static void main(String[] args) {
    fibonacciRecursion(10);
  }
  private static int[] fibonacciRecursion(int n) {
    if (n == 2) { // base case
      return new int[]{0, 1};
    }
    if (n == 1) {
      return new int[]{0};
    }
    int[] result = fibonacciRecursion(n - 1);      // recursive case
    System.out.println(Arrays.toString(result));
    result = Arrays.copyOf(result, n);             // increase the array size
    result[n - 1] = result[n - 2] + result[n - 3]; // sum of 2 previous elements
    return result;
  }

//  public static void main(String[] args) {
//    int fib_len = 9;
//    System.out.print("Fibonacci row of " + fib_len + " numbers is: \n");
//    for (int i = 0; i < fib_len; i++) {
//      System.out.print(fibonacciRecursion(i) + " ");
//    }
//  }
//
//  public static int fibonacciRecursion(int n) {
//    if (n == 0) {
//      return 0;
//    }
//    if (n == 1) {
//      return 1;
//    }
//    return fibonacciRecursion(n - 1) + fibonacciRecursion(n - 2);
//  }
}
