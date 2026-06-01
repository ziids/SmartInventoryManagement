/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pbo.smartinventorymanagement;

/**
 *
 * @author Davis
 */
public class BarangATK extends Barang{
    
    String satuan;
    
    public BarangATK(String id, String namaBarang, int stok, String satuan){
        super(id, namaBarang, "ATK", stok);
        this.satuan = satuan;
    }
    
    public String getSatuan() {return satuan;}
    public void setSatuan(String satuan) {this.satuan = satuan;}
}
