package Control;
 
import java.util.ArrayList;

import Model.dao_Category;
import Objects.Category;

public class CategoryControl {

	public ArrayList<Category> getListCategory(){ 
		dao_Category dao = new dao_Category(); 
		String sql = "Select * From loaisanpham";
		return dao.SelectDB(sql);
	}

	public static void main(String[] args) { 

		CategoryControl c = new CategoryControl(); 
		if(c.getListCategory().size() != 0) {
			for(Category ds : c.getListCategory()) {
				System.out.println(ds.getId()+" "+ds.getTenloai());
			}
		}
		else
			System.out.println("Không có dữ liệu để in");
	}

}
