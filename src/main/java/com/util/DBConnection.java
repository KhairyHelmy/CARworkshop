package com.util;


 

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    // Ambil tepat sama key yang kita set di Railway
    private static final String URL      = System.getenv("DB_URL");
    private static final String USER     = System.getenv("DB_USER");
    private static final String PASSWORD = System.getenv("DB_PASSWORD");

    public static Connection getConnection() {
        // Debug: tulis ke log untuk pastikan nilai tak null
        System.out.println("? Connecting to DB_URL    = " + URL);
        System.out.println("? Using DB_USER           = " + USER);
        // (jangan log password)

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
            throw new RuntimeException(e);
        }

        try {
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("? Database connection established.");
            return conn;
        } catch (SQLException e) {
            System.err.println("? Failed to connect to database: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
}
