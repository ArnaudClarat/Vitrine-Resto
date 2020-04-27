package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
		ResultSet count = getCount(definition);
		ArrayList<Categorie> categories = new ArrayList<>();
		try {
			while (count.next()) {
				categories.add(new Categorie(Integer.parseInt(count.getString(1))));
			}
		} catch (SQLException e) {
			e.printStackTrace();
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
			System.out.println(pStmt.execute() + " " + colonne + " " + valeur + " " + id);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(false + " Erreur modification " + colonne + " " + valeur + " " + id);
		}
	}
	
	public static void delCateg(String id) {
		try {
			Connection db = DB.getDB();
			assert db != null;
			PreparedStatement pStmt = db.prepareStatement("DELETE FROM t_plats WHERE categ_plat = ?");
			pStmt.setInt(1, Integer.parseInt(id));
			if(pStmt.executeUpdate() != 0) {
				pStmt = db.prepareStatement("DELETE FROM t_categ WHERE id_categ = ?");
				pStmt.setString(1, id);
				if(pStmt.executeUpdate() != 0) {
					System.out.println("Plats et catégorie " + id + " supprimés");
				} else {
					System.out.println("Catégorie " + id + " non supprimée");
				}
			} else {
				System.out.println("Plats et catégorie " + id + " non supprimés");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("SQLException");
		}
	}
	
	public String getNom() {
		return this.entity.get("nom_categ");
	}
	
	public String getId() {
		return this.entity.get("id_categ");
	}
}