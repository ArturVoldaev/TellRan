package lesson6;

import java.util.Arrays;

public class DynamicArray {
  private int[] array;
  private int size;

  public DynamicArray(){
    array = new int[10];
    size = 0;
  }

  public DynamicArray(int size){
    this.array = new int[size];
    this.size = 0;
  }

  public int size() {
    return size;
  }

  public void remove(int idx) {
    System.arraycopy(array, idx+1,array, idx, array.length - idx - 2);
    size--;
  }

  public void addElem(int idx, int value, int [] array)  {
    array[idx] = value;
    size++;
  }

  public int get(int idx) {
    return array[idx];
  }
  public void add(int value) {
    if (size < array.length) {
      array[size] = value;
      size++;
    } else {
      int[] extArray = new int[array.length * 2];
      System.arraycopy(array, 0, extArray, 0,array.length);
      array = extArray;
      array[size] = value;
      size++;
    }
  }
  public void add(int idx, int value) {
    // TODO you have to control capacity of array
    if (size < array.length) {
      System.out.println(size+ " " + array.length);
      System.arraycopy(array, idx, array, idx + 1, array.length - idx - 1);
      array[idx] = value;
      size++;
    } else {
      int[] extArray = new int[array.length * 2];
      int[] tempArr = array;
      System.arraycopy(array, idx, extArray, idx + 1, array.length - idx);
      array = extArray;
      array[idx] = value;
      size++;
      for (int i=0; i <= array.length; i++) {
        if (idx > i) {
           array[i] = tempArr[i];
        }
      }
    }
  }

  @Override
  public String toString() {
    StringBuffer sb = new StringBuffer("[");
    for (int i=0; i < size; i++) {
      sb.append(array[i]);
      if (i < size - 1) {
        sb.append(", ");
      }
    }
    return sb.append("]").toString();
  }

}
