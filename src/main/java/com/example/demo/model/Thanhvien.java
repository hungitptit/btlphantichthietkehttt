package com.example.demo.model;


public class Thanhvien {
	
	private int id;

	private String name;
	

	private String username;
	

	private String password;
	

	private String quoctich;

	public Thanhvien(int id, String name, String username, String password, String quoctich) {
		super();
		this.id = id;
		this.name = name;
		this.username = username;
		this.password = password;
		this.quoctich = quoctich;
	}

	public Thanhvien() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getQuoctich() {
		return quoctich;
	}

	public void setQuoctich(String quoctich) {
		this.quoctich = quoctich;
	}
	
	
	
}
