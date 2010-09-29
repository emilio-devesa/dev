/**
 * Un pequeño ejemplo de qué es una clase y qué es un objeto
 * <a href="https://emiliodevesa.wordpress.com/2010/09/29/java-ejemplo-de-clase-objeto/">Blog
 * post</a>
 *
 * @author Emilio Devesa (http://emiliodevesa.wordpress.com)
 * @version 0.2
 */
public class Amigos {

    /**
     * Punto de entrada del programa
     *
     * @param args Argumentos introducidos en la consola al invocar el programa
     */
    public static void main(String[] args) {
        // Instanciamos dos objetos p1 p2 de la clase Persona con y sin parametros
        Persona p1 = new Persona("Manolo", 25, "Coruna", 981765432);
        Persona p2 = new Persona();

        // Mostramos los datos que almacenan inicialmente
        System.out.println("Datos iniciales: ");
        System.out.println();

        System.out.println("p1: ");
        /*
         * System.out.println ("nombre: "+p1.consultarNombre());
         * System.out.println ("edad: "+p1.consultarEdad());
         * System.out.println ("ciudad: "+p1.consultarCiudad());
         * System.out.println ("telf: "+p1.consultarTelefono());
         */
        p1.mostrarDatos(); // Sustituye a las cuatro lineas anteriores
        System.out.println();

        System.out.println("p2: ");
        p2.mostrarDatos();
        System.out.println();

        // Modificamos los valores de p2 con los metodos de la clase Persona
        System.out.println("Cambiamos datos de p2:");
        p2.cambiarNombre("Ramon");
        p2.cambiarEdad(12);
        p2.cambiarCiudad("Sevilla");
        p2.cambiarTelefono(654321987);
        System.out.println();

        // De nuevo, mostramos los datos de cada objeto p1 p2
        System.out.println("Mostramos de nuevo p1: ");
        p1.mostrarDatos();
        System.out.println();

        System.out.println("Mostramos de nuevo p2: ");
        p2.mostrarDatos();
        System.out.println();
    }

}

/**
 * Una clase que modela una persona y almacena nombre, edad, ciudad y teléfono
 *
 * @author Emilio Devesa (http://emiliodevesa.wordpress.com)
 * @version 0.2
 */
class Persona {

    private String nombre;
    private int edad;
    private String ciudad;
    private int telefono;

    /**
     * Constructor que recibe los datos de la persona por parámetros
     *
     * @param n Nombre
     * @param e Edad
     * @param c Ciudad
     * @param t Teléfono
     */
    public Persona(String n, int e, String c, int t) {
        this.nombre = n;
        this.edad = e;
        this.ciudad = c;
        this.telefono = t;
    }

    /**
     * Constructor sin parámetros
     */
    public Persona() {
        this.nombre = "";  // nombre vacio
        this.edad = 0;     // edad cero
        this.ciudad = "";  // ciudad vacia
        this.telefono = 0; // telefono cero
    }

    /**
     * Cambia el nombre de la persona
     *
     * @param n El nuevo valor del dato nombre
     */
    public void cambiarNombre(String n) {
        this.nombre = n;
    }

    /**
     * Cambia la edad de la persona
     *
     * @param e El nuevo valor del dato edad
     */
    public void cambiarEdad(int e) {
        this.edad = e;
    }

    /**
     * Cambia el nombre de la ciudad
     *
     * @param c El nuevo valor del dato ciudad
     */
    public void cambiarCiudad(String c) {
        this.ciudad = c;
    }

    /**
     * Cambia el teléfono de la persona
     *
     * @param t El nuevo valor del dato teléfono
     */
    public void cambiarTelefono(int t) {
        this.telefono = t;
    }

    /**
     * Obtener el nombre de esta persona
     *
     * @return Un String que contiene el nombre de la persona
     */
    public String consultarNombre() {
        return nombre;
    }

    /**
     * Obtener la edad de esta persona
     *
     * @return La edad como int
     */
    public int consultarEdad() {
        return edad;
    }

    /**
     * Obtener la ciudad de esta persona
     *
     * @return Un String que contiene el nombre de la ciudad
     */
    public String consultarCiudad() {
        return ciudad;
    }

    /**
     * Obtener el teléfono de esta persona
     *
     * @return El teléfono como int
     */
    public int consultarTelefono() {
        return telefono;
    }

    /**
     * Imprimir en pantalla los datos de esta persona
     */
    public void mostrarDatos() {
        System.out.println("nombre: " + this.consultarNombre());
        System.out.println("edad: " + this.consultarEdad());
        System.out.println("ciudad: " + this.consultarCiudad());
        System.out.println("telf: " + this.consultarTelefono());
    }

}