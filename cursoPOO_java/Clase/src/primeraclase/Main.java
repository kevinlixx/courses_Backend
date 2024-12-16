package primeraclase;

public class Main {
    public Main() {
        super();
    }

    public static void main(String[] args) {
        Main main = new Main();
        Doctor myDoctor= new Doctor();
        myDoctor.name = "Alejandro Rodriguez";
        myDoctor.showName();
    }
}
