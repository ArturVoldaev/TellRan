package lesson1.homeWork;

public class Phone {
  String number;
  String model;
  int weight;

  public Phone(String number, String model, int weight) {
    this.number = number;
    this.model = model;
    this.weight = weight;

    System.out.println(this.number+" "+this.model+" "+this.weight);
    System.out.println("=====================================================");
  }

  public void receiveCall (String name) {
    System.out.println("Звонит " + name);
  }

  public String getNumber() {
    return number;
  }
}
