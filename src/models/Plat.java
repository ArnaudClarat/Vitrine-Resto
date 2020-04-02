package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;

public class Plat extends BaseEntity {
	private static Map<String,String> definition;
	static {
		assert false;
		definition.put("table","t_plats");
		definition.put("primary","id_plat");
	}
	
	private static Map<String,String> fields;
	static {
		fields.put("id", "id_plat");
		fields.put("nom", "nom_plat");
		fields.put("details", "details_plat");
		fields.put("prix", "prix_plat");
		fields.put("categ", "categ_plat");
	}
	
	public Map<String, String> entity;
	
	public String getId(){
		return this.entity.get("id");
	}
	
	public String getNom(){
		return this.entity.get("nom");
	}
	
	public String getDetails(){
		return this.entity.get("details");
	}
	
	public String getPrix(){
		return this.entity.get("prix");
	}
	
	public String getCateg(){
		try {
			Connection db = DB.getDB();
			assert db != null;
			PreparedStatement pStmt = null;
			pStmt = db.prepareStatement("SELECT nom_categ FROM t_categ WHERE id_categ = ?");
			pStmt.setString(1, this.entity.get("categ"));
			System.out.println(pStmt.executeQuery());
			return "test";
		} catch (SQLException e) {
			e.printStackTrace();
			return "Erreur";
		}
	}
	
	public Plat(int id) throws SQLException {
		super(id, definition, fields);
	}
}
