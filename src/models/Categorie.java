package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Categorie extends BaseEntity {
	public static Map<String,String> definition = new HashMap<>();
	static {
		definition.put("table", "t_categ");
		definition.put("primary", "id_categ");
	}
	
	public static Map<String,String> fields = new HashMap<>();
	static {
		fields.put("id", "id_categ");
		fields.put("nom", "nom_categ");
	}
	
	public Categorie(int id) {
		super(id, definition, fields);
	}
	
	public static ArrayList<Categorie> getAll() {
		int count = getCount(definition) + 1;
		ArrayList<Categorie> categories = new ArrayList<>();
		for (int i = 1; i < count; i++) {
			categories.add(new Categorie(i));
		}
		return categories;
	}
	
	public static void modCateg(String colonne, String valeur, String id) {
		try {
			Connection db = DB.getDB();
			assert db != null;
			PreparedStatement pStmt = db.prepareStatement("UPDATE t_categ SET " + colonne + " = ? WHERE id_categ = ?");
			pStmt.setString(1, valeur);
			pStmt.setString(2, id);
			System.out.println(pStmt.execute());
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Erreur modification");
			System.out.println(false);
		}
	}
	
	public static void delCateg(String id) {
		try {
			Connection db = DB.getDB();
			assert db != null;
			PreparedStatement pStmt = db.prepareStatement("DELETE FROM t_categ WHERE id_categ = ?");
			pStmt.setString(1, id);
			System.out.println(pStmt.execute());
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Erreur suppression");
			System.out.println(false);
		}
	}
	
	public String getNom() {
		return this.entity.get("nom_categ");
	}
	
	public String getId() {
		return this.entity.get("id_categ");
	}
}