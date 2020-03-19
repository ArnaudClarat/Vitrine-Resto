package models;

import java.util.Map;

public class Categorie extends BaseEntity {
	private static Map<String,String> definition;
	static {
		assert false;
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
}
