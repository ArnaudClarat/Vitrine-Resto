package models;

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
	
	public Categorie(int id) throws SQLException {
		super(id, definition, fields);
	}
	
	public static ArrayList<Categorie> getAll() throws SQLException {
		int count = getCount(definition) + 1;
		ArrayList<Categorie> categories = new ArrayList<>();
		for (int i = 1; i < count; i++) {
			categories.add(new Categorie(i));
		}
		return categories;
	}
	
	public String getNom() {
		return this.entity.get("nom_categ");
	}
	
	public String getId() {
		return this.entity.get("id_categ");
	}
}