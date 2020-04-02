package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

abstract class BaseEntity {
	public Map<String,String> entity = new HashMap<>();
	private static Connection db = DB.getDB();
	
	public BaseEntity(int id, Map<String,String> definition, Map<String,String> fields) throws SQLException {
		if (id != 0) {
			ResultSet datas = getDatas(id, definition);
			while (datas.next()) {
				for (String field : fields.values()) {
					this.entity.put(field, datas.getString(field));
				}
			}
			
		}
	}
	
	public ResultSet getDatas(int id, Map<String,String> definition) {
		try {
			Connection db = DB.getDB();
			assert db != null;
			PreparedStatement pStmt = db.prepareStatement("SELECT * FROM " + definition.get("table"));
			return pStmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	static int getCount(Map<String,String> definition) {
		try {
			assert db != null;
			PreparedStatement pStmt = null;
			pStmt = db.prepareStatement("SELECT COUNT(?) FROM " + definition.get("table"));
			pStmt.setString(1, definition.get("primary"));
			ResultSet resultSet = pStmt.executeQuery();
			if (resultSet.next()) {
				return resultSet.getInt(1);
			}
			return 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}
}
