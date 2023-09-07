package homework8;

public class HomeWork8 {
    public static void main(String[] args) {

        int[] weights = {50, 25, 35};
        int[] values = {165, 150, 120};
        int capacity = 50;

        double result = fractionalKnapsack(weights, values, capacity);
        System.out.println(result);

    }// main

    public static int fractionalKnapsack(int[] weights, int[] values, int capacity) {
        double[] ratios = new double[weights.length];
        int totalValue = 0;

        for (int i = 0; i < weights.length; i++) {
            ratios[i] = (double) weights[i] / values[i];
        }

        while (capacity > 0) {

            int bestItem = -1;
            double bestRatio = 0;

            for (int i = 0; i < weights.length; i++) {
                if (weights[i] > 0 && ratios[i] > bestRatio) {
                    bestRatio = ratios[i];
                    bestItem = i;
                }
            }

            if (bestItem == -1) break;

            int fraction = Math.min(weights[bestItem], capacity);
            totalValue += fraction * ratios[bestItem];
            weights[bestItem] -= fraction;
            capacity -= fraction;
        }

        return totalValue;
    }
}
