package com.example.demo.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.example.demo.model.Danhsachchitiet;
import com.example.demo.model.TkElo;

public class DanhsachchitietDAO extends DAO {
	public List<Danhsachchitiet> dschitiet(int id){
		List<Danhsachchitiet> listct = null;
		listct = new ArrayList<Danhsachchitiet>();
		String sql = "{call dschitiet(?)}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setInt(1, id);
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				Danhsachchitiet tk = new Danhsachchitiet();
				//tk.setId(rs.getInt("idThanhvien"));
				tk.setIdTrandau(rs.getInt("idTrandau"));
				
				tk.setDoithu(rs.getString("doithu"));
				tk.setCamquan(rs.getString("camquan"));
				tk.setElothaydoi(rs.getFloat("elothaydoi"));
				listct.add(tk);
			}
			return listct;
		}catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		
	}
	
}
