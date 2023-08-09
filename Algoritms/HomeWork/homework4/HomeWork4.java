package homework4;
import java.util.Arrays;

public class HomeWork4 {
  public static void main(String[] args) {
    int[] array = {2, 3, 15, 1, 9, 12}; // параметр для метода
    mergeSort(array); // вызов метода
    System.out.println(Arrays.toString(mergeSort(array))); // посмотреть отсортированный массив
  }
  public static int[] mergeSort(int[] src) {
    if (src.length <= 1) return src; // условие для выхода из рекурсии
    int[] left = Arrays.copyOfRange(src, 0, src.length / 2); // объявление и формирование левого массива
    int[] right = Arrays.copyOfRange(src, left.length, src.length); // объявление и формирование правого массива
    return merge(mergeSort(left), mergeSort(right)); // рекурсия метода merge
  }

  private static int[] merge(int[] left, int[] right) {
    int resIn = 0, leftIn = 0, rightIn = 0; // объявляем переменнык правой, левой части и результата
    int[] result = new int[left.length + right.length]; // объявляем массив результата, его длинна равна сумме длинны параметров метода

    while (leftIn < left.length && rightIn < right.length) // цикл. До тех пор пока переменная меньше чем длинна массива
      if (left[leftIn] < right[rightIn])   // условие(если истина). Если элемент из левого массива меньше, чем элемент правого,
        result[resIn++] = left[leftIn++];  // добавляем елемент в массив result из левого массива, и увеличиваем соответствущую переменную
      else result[resIn++] = right[rightIn++]; // условие(если ложь). добавляем елемент в массив result из правого массива, и увеличиваем соответствущую переменную

    while (resIn < result.length) // цикл. До тех пор пока переменная меньше чем длинна массива
      if (leftIn != left.length) // условие. Если переменная не равна длинне массива
        result[resIn++] = left[leftIn++]; // то елемент в результирующем массиве равен элементу из левого массива. Увеличиваем переменные на инкримент
      else result[resIn++] = right[rightIn++]; // если нет, то делаем тоже самое, но с правым массивом
    return result; // возвращаем финальный массив
  }
}
