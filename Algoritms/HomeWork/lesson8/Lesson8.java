package lesson8;

import java.util.*;

public class Lesson8 {
    public static void main(String[] args) {
        // 1
        List<Integer> task = Arrays.asList(3,2,1,4,5);
        int maxTime = 12;
        List<Integer> resolved = taskSelection(task, maxTime);
        System.out.println(resolved);

        // 2
        List<Integer> coins = Arrays.asList(25,5,10,1);
        int amount = 63;
        System.out.println(coinChange(coins, amount));
    }

    static List<Integer> taskSelection( List<Integer> task, int maxTime) {
        List<Integer> result = new ArrayList<>();
        int resultTime = 0;

        LinkedList<Integer> sortedTask = new LinkedList<>(task);
        Collections.sort(sortedTask);
        while (resultTime < maxTime && maxTime - resultTime >= sortedTask.peek()) {
            int taskTime = sortedTask.pop();
            result.add(taskTime);
            resultTime = resultTime + taskTime;
        }
        return  result;
    }

    static List<Integer> coinChange(List<Integer> coins, int amount) {
        List<Integer> result = new ArrayList<>();


        Collections.sort(coins);

        for (int i = coins.size() - 1; i >= 0; i--){
            while (amount >= coins.get(i)) {
                amount = amount - coins.get(i);
                result.add(coins.get(i));
            }
        }

        if (amount == 0) {
            return result;
        }


        return  Collections.EMPTY_LIST;
    }
}
