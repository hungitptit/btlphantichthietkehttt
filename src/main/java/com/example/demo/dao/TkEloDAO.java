package com.example.demo.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.example.demo.model.Kythu;
import com.example.demo.model.TkElo;

public class TkEloDAO extends DAO{
	
	public List<TkElo> tkElo(){
		List<TkElo> listtk = null;
		listtk = new ArrayList<TkElo>();
		String sql = "{call tkelo()}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				TkElo tk = new TkElo();
				//tk.setId(rs.getInt("idThanhvien"));
				tk.setkythuId(rs.getInt("idKythu"));
				tk.setName(rs.getString("hovaten"));
				tk.setElotruocgiai(rs.getInt("elotruocgiai"));
				tk.setElohientai(rs.getFloat("elohientai"));
				tk.setElothaydoi(rs.getFloat("elothaydoi"));
				listtk.add(tk);
			}
			return listtk;
		}catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		
	}
	

}
