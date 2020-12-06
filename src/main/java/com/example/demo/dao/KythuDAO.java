package com.example.demo.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;




import com.example.demo.model.Kythu;;

public class KythuDAO extends DAO {
	public KythuDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public List<Kythu> searchPlayerByName(String name){
		List<Kythu> listKythu = null;
		listKythu = new ArrayList<Kythu>();
		String sql = "{call seachplayerbyname(?)}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setString(1, "%"+name+"%");
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				Kythu kt = new Kythu();
				kt.setId(rs.getInt("idThanhvien"));
				kt.setkythuId(rs.getInt("idKythu"));
				kt.setName(rs.getString("hovaten"));
				kt.setElotruocgiai(rs.getInt("elotruocgiai"));
				kt.setQuoctich(rs.getString("quoctich"));
				listKythu.add(kt);
			}
			return listKythu;
		}catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		
	}
	
	public List<Kythu> getAll(){
		List<Kythu> listKythu = null;
		listKythu = new ArrayList<Kythu>();
		String sql = "{call getALL()}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				Kythu kt = new Kythu();
				kt.setId(rs.getInt("idThanhvien"));
				kt.setkythuId(rs.getInt("idKythu"));
				kt.setName(rs.getString("hovaten"));
				kt.setElotruocgiai(rs.getInt("elotruocgiai"));
				kt.setQuoctich(rs.getString("quoctich"));
				listKythu.add(kt);
			}
			return listKythu;
		}catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		
	}
	
	public Kythu getKythuById(int id){
		Kythu kt = null;
		kt = new Kythu();
		String sql = "{call getkythubyid(?)}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setInt(1, id);
			ResultSet rs = cs.executeQuery();
			if(rs.next()) {
				//Kythu kt = new Kythu();
				kt.setId(rs.getInt("idThanhvien"));
				kt.setkythuId(rs.getInt("idKythu"));
				kt.setName(rs.getString("hovaten"));
				kt.setElotruocgiai(rs.getInt("elotruocgiai"));
				kt.setQuoctich(rs.getString("quoctich"));
				
			}
			return kt;
		}catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		
	}
	
	public void themKythu(Kythu kt, int id) {
		String sql = "{call themKythu(?,?)}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			//cs.setInt(1, kt.getId());
			//cs.setInt(2,kt.getkythuId());
			cs.setInt(1, id);
			cs.setInt(2, kt.getElotruocgiai());
		
			cs.executeQuery();
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	public void suaKythu(Kythu kt) {
		String sql = "{call updateKythu(?,?,?,?)}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setInt(1, kt.getId());
			cs.setString(2, kt.getName());
			cs.setInt(3, kt.getElotruocgiai());
			cs.setString(4,kt.getQuoctich());
			cs.executeQuery();
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	public void xoaKythu(int id) {
		String sql = "{call xoaKythu(?)}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setInt(1, id);
			cs.executeQuery();
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
}
