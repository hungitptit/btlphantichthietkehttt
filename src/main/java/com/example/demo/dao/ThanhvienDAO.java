package com.example.demo.dao;

import com.example.demo.model.Kythu;
import com.example.demo.model.Nhanvien;
import com.example.demo.model.Thanhvien;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.CallableStatement;
import java.sql.ResultSet;
 

 
public class ThanhvienDAO extends DAO{
 
    public ThanhvienDAO() {
        super();
        // TODO Auto-generated constructor stub
    }
     
    public boolean kiemtraDangnhap(Thanhvien tv){
        boolean kq = false;
        if(tv.getUsername().contains("true") || tv.getUsername().contains("=")||
                tv.getPassword().contains("true") || tv.getPassword().contains("=")) return false;
        String sql = "{call kiemtraDN(?,?)}"; //su dung stored procedure
        try{
            CallableStatement cs = con.prepareCall(sql);
            cs.setString(1,tv.getUsername());
            cs.setString(2,tv.getPassword());
            ResultSet rs = cs.executeQuery();
             
            if(rs.next()){
            	
                tv.setId(rs.getInt("idThanhvien"));
               // tv.setVaitro(rs.getString("vaitro"));
                //hoten
                
                tv.setName(rs.getString("hovaten"));
                tv.setQuoctich(rs.getString("quoctich"));
                //tv.setHoten(ht);
                kq = true;
            }
        }catch(Exception e){
            e.printStackTrace();
            kq = false;
        }
        return kq;
    }
    public Integer getIdbyUsername(String usr){
    	String sql = "SELECT tv.idThanhvien FROM thanhvien as tv WHERE tv.username = ?";
    	Integer kq = 0;
    	try {
    		
			PreparedStatement cs = con.prepareStatement(sql);
			cs.setString(1, usr);
			ResultSet rs = cs.executeQuery();
			if(rs.next()) {
				kq = rs.getInt("idThanhvien");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	return kq;
    }
	public void themThanhvien(Kythu tv) {
		String sql = "{call themThanhvien(?,?,?,?)}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			//cs.setInt(1, kt.getId());
			//cs.setInt(2,kt.getkythuId());
			cs.setString(1, tv.getUsername());
			cs.setString(2, tv.getPassword());
			cs.setString(3, tv.getName());
			cs.setString(4, tv.getQuoctich());
			cs.executeQuery();
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
}