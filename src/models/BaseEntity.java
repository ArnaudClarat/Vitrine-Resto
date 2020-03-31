package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

abstract class BaseEntity {
	static Map<String,String> definition;
	static Map<String,String> fields;
	public Map<String, String> entity;
	
	public BaseEntity(int id) {
		if (id != 0) {
			Map<String, String> datas = getDatas(id);
			for (String field : fields.keySet()) {
				if (datas.containsKey(field)) {
					this.entity.put(field, datas.get(field));
				}
			}
		}
	}
	
	public Map<String, String> getDatas(int id) {
		try {
			Connection db = DB.getDB();
			assert db != null;
			PreparedStatement pStmt = db.prepareStatement("SELECT * FROM ? ");
			pStmt.setString(1, definition.get(0));
			return (Map<String, String>) pStmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static int getCount() {
		try {
			Connection db = DB.getDB();
			assert db != null;
			PreparedStatement pStmt = null;
			pStmt = db.prepareStatement("SELECT COUNT(?) FROM ? ");
			pStmt.setString(1, definition.get(1));
			pStmt.setString(2, definition.get(0));
			ResultSet resultSet = pStmt.executeQuery();
			while (resultSet.next()) {
				System.out.println(resultSet.getInt(definition.get(1)));
			}
			return 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
}
