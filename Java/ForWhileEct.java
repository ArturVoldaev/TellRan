
import java.util.Random;
public class ForWhileEct {
    public static void main(String[] args) {
        // Просто закрываю д/з

        Random r = new Random();
        int[] q = new int[10];

        for (int i = 0; i < q.length; i++) {
            int random = r.nextInt(1,11);
            q[i] = random;
        }

        for (int i = 0; i < q.length; i++) {
            System.out.print(q[i] + " ");
        }
        System.out.println();

        getSolutionViaForLoop(q);
        System.out.println();
        getSolutionViaWhileLoop(q);
        System.out.println();
        getSolutionViaDoWhileLoop(q);
    }

    public static void getSolutionViaForLoop(int[] q) {
        for (int i = 0; i < q.length; i++) {
            System.out.print((q[i]+10) + " ");
        }
    }

    public static void getSolutionViaWhileLoop(int[] q) {
        int i = 0;
        while (i < q.length) {
            System.out.print((q[i]+10) + " ");
            i++;
        }
    }

    public static void getSolutionViaDoWhileLoop(int[] q) {
        int i = 0;
        if (i < q.length) {
            do {
                System.out.print((q[i] + 10) + " ");
                i++;
            } while (i < q.length);
        }
    }
}
