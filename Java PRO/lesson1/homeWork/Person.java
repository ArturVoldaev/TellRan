package lesson1.homeWork;

public class Person {
    String fullName;
    int age;

    public Person() {

    }

    public Person(String fullName, int age) {
        this.fullName = fullName;
        this.age = age;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void move(String fullName) {
        System.out.println("Person "+ fullName + " идет");
    }

    public void talk(String fullName) {
        System.out.println("Person "+ fullName + " говорит");
    }
}
