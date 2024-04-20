public class Deque {
    private Node filanormal;
    private Node filapreferencial;

    private Node tail_normal;
    private Node tail_preferencial;

    public void entrar(int numero, boolean normal){
        Node fila;
        Node tail;
        if (normal) fila = filanormal; else fila = filapreferencial;
        if (normal) tail = tail_normal; else tail = tail_preferencial;
        
        fila =  new Node(numero, fila, null);
        
        
    }

    public void atualizar_tail(boolean normal){
        Node tail;
        if (normal) tail = tail_normal; else tail = tail_preferencial;
        if (tail.next() == null | tail == null) return;
        tail = tail.next();
    }

    public Node sair(boolean normal){
        Node fila;
        if (normal) fila = filanormal; else fila = filapreferencial;
        
        if (fila == null) return null;
        if (fila.next() == null) return fila;

        return null; 
    }
}
