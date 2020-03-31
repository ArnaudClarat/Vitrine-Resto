package models;

import java.util.ArrayList;
import java.util.Map;

public class Categorie extends BaseEntity {
	private static Map<String,String> definition;
	static {
		definition.put("table","t_categ");
		definition.put("primary","id_categ");
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
		int count = getCount();
		ArrayList<Categorie> categories = new ArrayList<>();
		for (int i = 0; i < count; i++) {
			categories.add(new Categorie(i));
		}
		return categories;
	}
}