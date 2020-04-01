package models;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Categorie extends BaseEntity {
	public static Map<String,String> definition = new HashMap<>();
	static {
		try {
			assert false;
			definition.put("table", "t_categ");
			definition.put("primary", "id_categ");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private static Map<String,String> fields;
	static {
		fields.put("id", "id_categ");
		fields.put("nom", "nom_categ");
	}
	
	public Categorie(int id) {
		super(id);
	}
	
	public static ArrayList<Categorie> getAll() {
		int count = getCount() + 1;
		ArrayList<Categorie> categories = new ArrayList<>();
		for (int i = 1; i < count; i++) {
			categories.add(new Categorie(i));
		}
		return categories;
	}
}