package lesson1.homeWork;

public class TestPhoneClass {
  public static void main(String[] args) {
    Phone p1 = new Phone("123456789", "E398", 666);
    Phone p2 = new Phone("987654321", "RAiZER V3", 200);
    Phone p3 = new Phone("987456321", "C65", 423);

    p1.receiveCall("Oleg");
    p2.receiveCall("Anna");
    p3.receiveCall("Robert");

    System.out.println("=====================================================");

    System.out.println("возвращаю номер телефона " + p1.getNumber());
    System.out.println("возвращаю номер телефона " + p2.getNumber());
    System.out.println("возвращаю номер телефона " + p3.getNumber());
  }
}
