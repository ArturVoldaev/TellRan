package lesson6;

public class Lesson6 {
  public static void main(String[] args) {
    DynamicArray da = new DynamicArray(5);
    da.add(8);
    da.add(4);
    da.add(12);
    da.add(-3);
    da.add(15);
    da.add(33);
    da.add(44);
    da.add(55);
    System.out.println(da);
    da.add(7,66);
    System.out.println(da);
    da.remove(3);
    System.out.println(da);
    da.add(7,66);
    System.out.println(da);
    da.add(1,77);
    System.out.println(da);
    da.add(8,66);
    System.out.println(da);
    da.add(9,66);
    System.out.println(da);
    da.add(0,66);
    System.out.println(da);
    da.add(12,88);
    System.out.println(da);
    da.add(3,88);
    System.out.println(da);
    da.add(3,88);
    System.out.println(da);
    da.add(5,88);
    System.out.println(da);
    da.add(12,88);
    System.out.println(da);
    da.add(3,88);
    System.out.println(da);
    da.add(3,88);
    System.out.println(da);
    da.add(5,88);
    System.out.println(da);
    da.add(12,88);
    System.out.println(da);
    da.add(3,88);
    System.out.println(da);
    da.add(3,88);
    System.out.println(da);
    da.add(5,88);
    System.out.println(da);
  }
}
