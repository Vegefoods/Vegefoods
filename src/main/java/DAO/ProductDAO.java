package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Database.DBConnect;
import Model.Product;

public class ProductDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public List<Product> findTop8product() {
		String query = "SELECT TOP (8) * FROM Products ORDER BY product_id DESC";
		List<Product> products;
		try {
			products = new ArrayList<>();
			new DBConnect();
			conn = DBConnect.getConnection();
			ps = conn.prepareStatement(query);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				products.add(new Product(rs.getInt(1),
								rs.getString(2),
								rs.getString(3),
								rs.getFloat(4),
								rs.getString(5),
								rs.getInt(6),
								rs.getBoolean(7)));
			}
			
			return products;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Product> findAllproduct() {
		String query = "SELECT * FROM Products";
		List<Product> products;
		try {
			products = new ArrayList<>();
			new DBConnect();
			conn = DBConnect.getConnection();
			ps = conn.prepareStatement(query);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				products.add(new Product(rs.getInt(1),
								rs.getString(2),
								rs.getString(3),
								rs.getFloat(4),
								rs.getString(5),
								rs.getInt(6),
								rs.getBoolean(7)));
			}
			
			return products;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
