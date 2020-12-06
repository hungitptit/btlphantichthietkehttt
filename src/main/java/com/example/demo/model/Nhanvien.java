package com.example.demo.model;



public class Nhanvien extends Thanhvien{
	
	

	private int user_id;
	
	
	
	private String chucvu;

	public Nhanvien(int user_id, int manv, String chucvu) {
		super();
		this.user_id = user_id;
	
		this.chucvu = chucvu;
	}

	public Nhanvien() {
		super();
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}



	public String getChucvu() {
		return chucvu;
	}

	public void setChucvu(String chucvu) {
		this.chucvu = chucvu;
	}

	

}
