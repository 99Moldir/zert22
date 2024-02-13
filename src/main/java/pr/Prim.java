package pr;

public class Prim {
    String fname;
    String lname;
    double gpi;
    public Prim() {
        super();
    }
    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public double getGpi() {
        return gpi;
    }

    public void setGpi(double gpi) {
        this.gpi = gpi;
    }

    public String print(double gpi) {
        if(this.gpi<gpi)
            return "Ваш gpi меньше чем" + gpi + " Вы недопущены";
        else return "Вы допущены";
    }

}
