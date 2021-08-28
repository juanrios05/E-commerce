/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

import java.util.Objects;

/**
 *
 * @author juanb
 */
public class Producto {

    private String idProducto;
    private String nombre;
    private String descripcion;
    private String presentacion;
    private int idMarca;
    private String nombreMarca;
    private String fechaVencimiento;
    private double precioCompra;
    private double precioVenta;    
    private int cantidad;
    private int idSubcategoria;      
    private String nombreSubcategoria;
    private int cantidadAgregadoAlCarrito;


    public Producto() {
    }

    public Producto(String idProducto, String nombre, String descripcion, String presentacion, int idMarca, String nombreMarca, String fechaVencimiento, double precioCompra, double precioVenta, int cantidad, int idSubcategoria, String nombreSubcategoria, int cantidadAgregadoAlCarrito) {
        this.idProducto = idProducto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.presentacion = presentacion;
        this.idMarca = idMarca;
        this.nombreMarca = nombreMarca;
        this.fechaVencimiento = fechaVencimiento;
        this.precioCompra = precioCompra;
        this.precioVenta = precioVenta;
        this.cantidad = cantidad;
        this.idSubcategoria = idSubcategoria;
        this.nombreSubcategoria = nombreSubcategoria;
        this.cantidadAgregadoAlCarrito = cantidadAgregadoAlCarrito;
    }

    public String getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(String idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getPresentacion() {
        return presentacion;
    }

    public void setPresentacion(String presentacion) {
        this.presentacion = presentacion;
    }

    public int getIdMarca() {
        return idMarca;
    }

    public void setIdMarca(int idMarca) {
        this.idMarca = idMarca;
    }

    public String getNombreMarca() {
        return nombreMarca;
    }

    public void setNombreMarca(String nombreMarca) {
        this.nombreMarca = nombreMarca;
    }

    public String getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(String fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    public double getPrecioCompra() {
        return precioCompra;
    }

    public void setPrecioCompra(double precioCompra) {
        this.precioCompra = precioCompra;
    }

    public double getPrecioVenta() {
        return precioVenta;
    }

    public void setPrecioVenta(double precioVenta) {
        this.precioVenta = precioVenta;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getIdSubcategoria() {
        return idSubcategoria;
    }

    public void setIdSubcategoria(int idSubcategoria) {
        this.idSubcategoria = idSubcategoria;
    }

    public String getNombreSubcategoria() {
        return nombreSubcategoria;
    }

    public void setNombreSubcategoria(String nombreSubcategoria) {
        this.nombreSubcategoria = nombreSubcategoria;
    }

    public int getCantidadAgregadoAlCarrito() {
        return cantidadAgregadoAlCarrito;
    }

    public void setCantidadAgregadoAlCarrito(int cantidadAgregadoAlCarrito) {
        this.cantidadAgregadoAlCarrito = cantidadAgregadoAlCarrito;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Producto other = (Producto) obj;
        if (this.idMarca != other.idMarca) {
            return false;
        }
        if (Double.doubleToLongBits(this.precioCompra) != Double.doubleToLongBits(other.precioCompra)) {
            return false;
        }
        if (Double.doubleToLongBits(this.precioVenta) != Double.doubleToLongBits(other.precioVenta)) {
            return false;
        }
        if (this.cantidad != other.cantidad) {
            return false;
        }
        if (this.idSubcategoria != other.idSubcategoria) {
            return false;
        }
        if (!Objects.equals(this.idProducto, other.idProducto)) {
            return false;
        }
        if (!Objects.equals(this.nombre, other.nombre)) {
            return false;
        }
        if (!Objects.equals(this.descripcion, other.descripcion)) {
            return false;
        }
        if (!Objects.equals(this.presentacion, other.presentacion)) {
            return false;
        }
        if (!Objects.equals(this.nombreMarca, other.nombreMarca)) {
            return false;
        }
        if (!Objects.equals(this.fechaVencimiento, other.fechaVencimiento)) {
            return false;
        }
        if (!Objects.equals(this.nombreSubcategoria, other.nombreSubcategoria)) {
            return false;
        }
        return true;
    }

    
    
    

}
