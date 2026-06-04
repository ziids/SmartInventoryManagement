/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pbo.smartinventorymanagement;

/**
 *
 * @author Davis
 */
public class Barang {
    
    String id;
    String namaBarang;
    String kategori;
    int stok;
    
    public Barang (String id, String namaBarang, String kategori, int stok){
        this.id = id;
        this.namaBarang = namaBarang;
        this.kategori = kategori;
        this.stok = stok;
    }
    
    public String getId() {return id;}
    public String getNamaBarang() {return namaBarang;}
    public String getKategori() {return kategori;}
    public int getStock() {return stok;}
    
    public void setNamaBarang(String namaBarang) {this.namaBarang = namaBarang;}
    public void setStock(int stok) {this.stok = stok;}
}
