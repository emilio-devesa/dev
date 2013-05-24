/**
 * Ejemplo sencillo de POO con Java
 * <a href="https://emiliodevesa.wordpress.com/2013/05/24/concesionario-programa-de-ejemplo-en-java/">Blog
 * post</a>
 *
 * @author Emilio Devesa (http://emiliodevesa.wordpress.com)
 * @version 0.1
 */
public class Auto {

    private String brand = "";
    private String model = "";
    private String color = "";
    private int length = 0;
    private int width = 0;
    private int height = 0;

    /**
     * Constructor con valores por defecto
     */
    public Auto() {
    }

    /**
     * Constructor con valores pasados como parámetros
     *
     * @param brand Marca del auto
     * @param model Modelo del auto
     * @param color Color del auto
     * @param length Longitud del auto
     * @param width Anchura del auto
     * @param height Altura del auto
     */
    public Auto(String brand,
            String model,
            String color,
            int length,
            int width,
            int height) {
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.length = length;
        this.width = width;
        this.height = height;
    }

    /**
     * Establecer marca
     *
     * @param brand Marca del auto
     */
    public void setBrand(String brand) {
        this.brand = brand;
    }

    /**
     * Establecer modelo
     *
     * @param model Modelo del auto
     */
    public void setModel(String model) {
        this.model = model;
    }

    /**
     * Establecer color
     *
     * @param color Color del auto
     */
    public void setColor(String color) {
        this.color = color;
    }

    /**
     * Establecer longitud
     *
     * @param length Longitud del auto
     */
    public void setLength(int length) {
        this.length = length;
    }

    /**
     * Establecer anchura
     *
     * @param width Anchura del auto
     */
    public void setWidth(int width) {
        this.width = width;
    }

    /**
     * Establecer altura
     *
     * @param height Altura del auto
     */
    public void setHeight(int height) {
        this.height = height;
    }

    /**
     * Obtener marca
     *
     * @return Marca del auto
     */
    public String getBrand() {
        return this.brand;
    }

    /**
     * Obtener modelo
     *
     * @return Modelo del auto
     */
    public String getModel() {
        return this.model;
    }

    /**
     * Obtener color
     *
     * @return Color del auto
     */
    public String getColor() {
        return this.color;
    }

    /**
     * Obtener longitud
     *
     * @return Longitud del auto
     */
    public int getLength() {
        return this.length;
    }

    /**
     * Obtener anchura
     *
     * @return Anchura del auto
     */
    public int getWidth() {
        return this.width;
    }

    /**
     * Obtener altura
     *
     * @return Altura del auto
     */
    public int getHeight() {
        return this.height;
    }

    /**
     * Obtener un string con los datos del auto
     *
     * @return String con los datos del auto
     */
    @Override
    public String toString() {
        return (this.brand + " "
                + this.model + " "
                + this.color + " "
                + "Dimensions (LxWxH in mm): "
                + this.length + "x"
                + this.width + "x"
                + this.height);
    }

}
