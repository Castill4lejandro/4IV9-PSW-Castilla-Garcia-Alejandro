/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author C4stilla
 */
package Modelo;

public class DCompra {
    
    /*
    id_dcompra, id_producto, cantidad_dcompra
    subtotal_dcompra, id_ecompra
    
    */
    
    private int id_dcompra, id_producto, cantidad_dcompra, id_ecompra;
    private double subtotal_dcompra;
    
    public DCompra(){
    
    }

    public int getId_dcompra() {
        return id_dcompra;
    }

    public void setId_dcompra(int id_dcompra) {
        this.id_dcompra = id_dcompra;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getCantidad_dcompra() {
        return cantidad_dcompra;
    }

    public void setCantidad_dcompra(int cantidad_dcompra) {
        this.cantidad_dcompra = cantidad_dcompra;
    }

    public int getId_ecompra() {
        return id_ecompra;
    }

    public void setId_ecompra(int id_ecompra) {
        this.id_ecompra = id_ecompra;
    }

    public double getSubtotal_dcompra() {
        return subtotal_dcompra;
    }

    public void setSubtotal_dcompra(double subtotal_dcompra) {
        this.subtotal_dcompra = subtotal_dcompra;
    }
    
    
    
}