package lesson3.HomeWork;

public enum Cru {

  AUTRE(80),PREMIER(90),GRAND(100);
  private int quality;

  Cru(int quality) {
    this.quality = quality;
  }

  public int getQuality() {
    return quality;
  }

  public static void main(String[] args) {
    System.out.println(AUTRE.getQuality());
    System.out.println(PREMIER.getQuality());
    System.out.println(GRAND.getQuality());
  }
}


