package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Plat extends BaseEntity {
	private static Map<String,String> definition = new HashMap<>();
	static {
		assert false;
		definition.put("table","t_plats");
		definition.put("primary","id_plat");
	}
	
	private static Map<String,String> fields = new HashMap<>();
	static {
		fields.put("id", "id_plat");
		fields.put("nom", "nom_plat");
		fields.put("details", "details_plat");
		fields.put("prix", "prix_plat");
		fields.put("categ", "categ_plat");
	}
	
	public static ArrayList<Plat> getAll(){
		ArrayList<Plat> plats = new ArrayList<>();
		for (int i = 1; i <= 8; i++) {
			plats.add(new Plat(i));
		}
		return plats;
	}
	
	public String getId(){
		return this.entity.get("id_plat");
	}
	
	public String getNom(){
		return this.entity.get("nom_plat");
	}
	
	public String getDetails(){
		return this.entity.get("details_plat");
	}
	
	public String getPrix(){
		return this.entity.get("prix_plat");
	}
	
	public String getCateg(){
		return this.entity.get("categ_plat");
		}
		
	public static void modPlat(String colonne, String valeur, String id) {
		try {
			Connection db = DB.getDB();
			assert db != null;
			PreparedStatement pStmt = db.prepareStatement("UPDATE t_plats SET " + colonne + " = ? WHERE id_plat = ?");
			pStmt.setString(1, valeur);
			pStmt.setString(2, id);
			System.out.println(pStmt.execute() + " " + colonne + " " + valeur + " " + id);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(false + "Erreur modification " + colonne + " " + valeur + " " + id);
		}
	}
	
	public static void delPlat(String id) {
		try {
			Connection db = DB.getDB();
			assert db != null;
			PreparedStatement pStmt = db.prepareStatement("DELETE FROM t_plats WHERE id_plat = ?");
			pStmt.setString(1, id);
			System.out.println((pStmt.executeUpdate() != 0) + " plat " + id);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(false + "Erreur suppression " + id);
		}
	}
	
	public Plat(int id) {
		super(id, definition, fields);
	}
}
