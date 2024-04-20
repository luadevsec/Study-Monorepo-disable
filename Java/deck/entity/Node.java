public class Node {
    private int value;
    private Node next;
    private Node previous;

    public Node(int value) {
        this.value = value;
        this.next = null;
    }
    public Node() {
        this.value = 0;
        this.next = null;
    }
    public Node(int value, Node next) {
        this.value = value;
        this.next = next;
    }

    public Node(int value, Node next, Node previous) {
        this.value = value;
        this.next = next;
        this.previous = previous;
    }

    public int value() {
        return value;
    }

    public void value(int value) {
        this.value = value;
    }

    public Node next() {
        return next;
    }

    public void next(Node next) {
        this.next = next;
    }

    public Node previous() {
        return previous;
    }

    public void previous(Node previous) {
        this.previous = previous;
    }
}