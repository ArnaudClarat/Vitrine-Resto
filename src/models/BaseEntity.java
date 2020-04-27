package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

abstract class BaseEntity {
	public Map<String,String> entity = new HashMap<>();
	private static Connection db = DB.getDB();
	
	public BaseEntity(int id, Map<String,String> definition, Map<String,String> fields) {
		if (id != 0) {
			try {
				ResultSet datas = getDatas(id, definition);
				while (datas.next()) {
					for (String field : fields.values()) {
						this.entity.put(field, datas.getString(field));
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public ResultSet getDatas(int id, Map<String,String> definition) {
		try {
			Connection db = DB.getDB();
			assert db != null;
			PreparedStatement pStmt = db.prepareStatement("SELECT * FROM " + definition.get("table") + " WHERE " + definition.get("primary") + " = " + id);
			return pStmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	static ResultSet getCount(Map<String,String> definition) {
		try {
			assert db != null;
			PreparedStatement pStmt = db.prepareStatement("SELECT " + definition.get("primary") + " FROM " + definition.get("table"));
			return pStmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
