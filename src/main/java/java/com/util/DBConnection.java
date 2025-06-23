package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/workshopdb"; // ganti dengan nama DB sebenar
    private static final String USER = "root"; // ganti dengan username DB
    private static final String PASSWORD = ""; // ganti dengan password DB

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e); // biar nampak error kalau connection fail
        }
    }
}
