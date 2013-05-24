import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

/**
 * Ejemplo sencillo de POO con Java
 * <a href="https://emiliodevesa.wordpress.com/2013/05/24/concesionario-programa-de-ejemplo-en-java/">Blog
 * post</a>
 *
 * @author Emilio Devesa (http://emiliodevesa.wordpress.com)
 * @version 0.1
 */
public class Concesionario {

    private ArrayList<Auto> listAuto;

    /**
     * Se crea un concesionario nuevo y se inicializa la lista de Autos
     */
    public Concesionario() {
        this.listAuto = new ArrayList();
    }

    /**
     * Añade un Auto a la lista de Autos
     *
     * @throws IOException Esta excepción se lanza si sucede un error o si algun
     * dato no tiene un formato válido
     */
    public void addAuto() throws IOException {
        BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
        Auto newAuto = new Auto();
        System.out.print("Brand: ");
        newAuto.setBrand(input.readLine());
        System.out.print("Model: ");
        newAuto.setModel(input.readLine());
        System.out.print("Color: ");
        newAuto.setColor(input.readLine());
        System.out.print("Length (in mm): ");
        newAuto.setLength(Integer.parseInt(input.readLine()));
        System.out.print("Width (in mm): ");
        newAuto.setWidth(Integer.parseInt(input.readLine()));
        System.out.print("Height (in mm): ");
        newAuto.setHeight(Integer.parseInt(input.readLine()));
        listAuto.add(newAuto);
    }

    /**
     * Muestra por pantalla los datos de cada Auto de la lista de Autos
     */
    public void getAutos() {
        for (Auto auto : listAuto) {
            System.out.println(auto);
        }
    }

}
