package models;

import java.sql.*;

public class DB {
	private static Connection conn = getConn();
	
	public static Connection getDB() {
		return conn;
	}
	
	static Connection getConn() {
		try {
			System.out.println("Loading driver");
			Class.forName("com.mysql.cj.jdbc.Driver"); // Chargement du driver
			System.out.println("Driver loaded");
			// Connexion à la DB
			System.out.println("Connection..");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vitrineresto?serverTimezone=UTC", "root", "");
			System.out.println("Connection done");
			return conn;
		} catch (SQLException e) {
			System.out.println("Cannot connect to the database! SQL");
			e.printStackTrace();
			return null;
		} catch (ClassNotFoundException e) {
			System.out.println("Cannot connect to the database! Class");
			e.printStackTrace();
			return null;
		}
	}
	
	public boolean close() {
		try {
			conn.close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}
