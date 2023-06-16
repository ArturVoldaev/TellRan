package lesson1.homeWork;


public class TestPersonClass {
  public static void main(String[] args) {
    Person oleg = new Person();
    oleg.setFullName("Ivanov Ivan Ivanovich");
    oleg.setAge(60);

    System.out.println(oleg.getFullName());
    System.out.println(oleg.getAge());
    oleg.move(oleg.getFullName());
    oleg.talk(oleg.getFullName());

    System.out.println("==============================");

    Person igor = new Person("Petrov Igon Anatolevich", 55);

    System.out.println(igor.getFullName());
    System.out.println(igor.getAge());
    igor.move(igor.getFullName());
    igor.talk(igor.getFullName());
  }

}
