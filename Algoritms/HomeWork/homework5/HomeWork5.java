package homework5;

import java.util.Arrays;

public class HomeWork5 {
  public static void main(String[] args) {
    int[] array = {7, -6, 4, 1, 6, 8, -2, 0, -10};
    int low = 0;
    int high = array.length - 1;
    quickSort(array, low, high);
    System.out.println(Arrays.toString(array));
  }

  static void quickSort(int[] array, int low, int high) {
    if (array.length == 0) {
      return;
    }

    if (low >= high) {
      return;
    }

    // выбрать опорный элемент
    int middle = low + (high - low) / 2;
    int opora = array[middle];

    // разделим на подмассивы, слева - меньше опорного, справа - больше

    int i = low, j = high;
    while (i <= j) {
      while (array[i] < opora){
        i++;
      }
      while (array[j] > opora){
        j--;
      }
      if(i <= j) {
        int temp = array[i];
        array[i] = array[j];
        array[j] = temp;
        i++;
        j--;
      }
    }
    // вызов рекурсии для левой и правой части
    if (low < j) {
      quickSort(array, low, j);
    }
    if (high > i) {
      quickSort(array, i, high);
    }
  }
}
