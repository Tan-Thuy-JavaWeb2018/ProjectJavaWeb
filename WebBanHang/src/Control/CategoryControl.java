package Control;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.*;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import Model.Category;
import Model.ConnectToDB;

public class CategoryControl {

	public ArrayList<Category> getListCategory(){ 
		ConnectToDB conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect(); 
		// Tạo mảng để lấy lưu dữ liệu vào
		ArrayList<Category> list = new ArrayList<>();  
		Statement stmt; 
		String sql = "Select * From loaisanpham"; 
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql); 
			while (rs.next()) {
				//Tạo một đối tượng category để thêm vào danh sách
				Category category = new Category();
				category.setId(rs.getLong("id"));
				category.setTenloai(rs.getString("tenloai"));
				list.add(category); 
			} 
			conndb.CloseConnect();
			return list;  
		} catch (SQLException e) { 
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return list; 
	}

	public static void main(String[] args) { 

		CategoryControl c = new CategoryControl();
		if(c.getListCategory().size()!=0) {
			for(Category ds : c.getListCategory()) {
				System.out.println(ds.getId()+" "+ds.getTenloai());
			}
		}
		else
			System.out.println("Không có dữ liệu để in");
	}

}
