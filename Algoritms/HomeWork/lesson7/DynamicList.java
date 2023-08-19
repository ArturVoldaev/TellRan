package lesson7;

import java.util.Arrays;

public class DynamicList {
    private int size;
    private Node first;
    private Node last;

    public void push(Integer value) {
        if (first == null) { // push 1st element
            first = new Node(value, null, null);
        } else if (last == null) { // push 2nd element
            last = first;
            first = new Node(value, null, last);
            first.pred = first;
        } else { // push 3rd and other(s)
            Node newFirst = new Node(value, null, first);
            first.pred = newFirst;
            first = newFirst;
        }
        size++;
    }

    public void offer(Integer value) {
        if(first == null) {
            first = new Node(value, null, null);

        } else if (last == null) {
            last = new Node (value, first, null);
            first.next = last;
        } else {
            Node newLast = new Node(value, last, null);
            last.next = newLast;
            last = newLast;
        }
        size++;
    }

    public Integer pop() {
        Integer value = null;
        if (first != null) {
            value = first.value;
            first = first.next;
            if (first != null) {
                first.pred = null;
                if (first.next == null) {
                    last = null;
                }
            }
            size--;
        }
        return value;
    }

    public Integer poll() {
        return pop();
    }


    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer("[");
        if (first != null) {
            Node cursor = first;
            do {
                sb.append(cursor.value);
                cursor = cursor.next;
                if (cursor != null) {
                    sb.append(", ");
                }
            } while (cursor != null);
        }
        return sb.append("]").toString();
    }

    private class Node {
        Integer value;
        Node pred;
        Node next;

        public Node(Integer value, Node pred, Node next) {
            this.value = value;
            this.pred = pred;
            this.next = next;
        }
    }
}
