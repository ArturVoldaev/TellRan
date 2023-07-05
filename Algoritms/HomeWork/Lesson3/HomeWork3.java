package homework3;

import java.util.Arrays;

public class HomeWork3 {
  public static void main(String[] args) {
    int fib_len = 9;
    System.out.print("Fibonacci row of " + fib_len + " numbers is: \n");
    for (int i = 0; i < fib_len; i++) {
      System.out.print(fibonacciRecursion(i) + " ");
    }
  }

  public static int fibonacciRecursion(int n) {
    if (n == 0) {
      return 0;
    }
    if (n == 1) {
      return 1;
    }
    return fibonacciRecursion(n - 1) + fibonacciRecursion(n - 2);
  }
}
