import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Ejemplo sencillo de POO con Java
 * <a href="https://emiliodevesa.wordpress.com/2013/05/24/concesionario-programa-de-ejemplo-en-java/">Blog
 * post</a>
 *
 * @author Emilio Devesa (http://emiliodevesa.wordpress.com)
 * @version 0.1
 */
public class Main {

    /**
     * Punto de entrada del programa
     *
     * @param args Argumentos introducidos en la consola al invocar el programa
     */
    public static void main(String[] args) {
        boolean exit = false;
        Concesionario concesionario = new Concesionario();
        do {
            try {
                int task = mainMenu();
                switch (task) {
                    case 0:
                        exit = true;
                        break;
                    case 1:
                        concesionario.addAuto();
                        break;
                    case 2:
                        concesionario.getAutos();
                        break;
                    default:
                        break;
                }
                System.out.println();
            } catch (IOException ex) {
                Logger.getLogger(Concesionario.class.getName()).log(Level.SEVERE, null, ex);
            }
        } while (!exit);
    }

    /**
     * Menu principal
     *
     * @return un número que representa la tarea a realizar
     * @throws IOException Esta excepción se lanza si sucede un error o si la
     * opción no es válida
     */
    private static int mainMenu() throws IOException {
        // This method returns the number of the task to be performed
        BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Opciones: \n"
                + "1. Introducir nuevo auto \n"
                + "2. Ver autos \n"
                + "0. Salir \n");
        System.out.print("Introducir numero de opcion deseada: ");
        return Integer.parseInt(input.readLine());
    }

}
