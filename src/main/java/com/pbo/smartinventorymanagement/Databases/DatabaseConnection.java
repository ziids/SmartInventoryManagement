package com.pbo.smartinventorymanagement.Databases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Yazid Yusuf
 */
public class DatabaseConnection {
    private static Connection mysqlconfig;

    public static Connection configDB() throws SQLException {
        try {
            String url = "jdbc:mysql://localhost:3306/smartinventorymanagement";
            String user = "root";
            String pass = "";

            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

            mysqlconfig = DriverManager.getConnection(url, user, pass);

        } catch (Exception e) {
            System.out.println("Koneksi Gagal: " + e.getMessage());
        }

        return mysqlconfig;
    }
}
