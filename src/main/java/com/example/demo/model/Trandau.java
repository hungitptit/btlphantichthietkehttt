package com.example.demo.model;



public class Trandau {

	private int id;
	

	private int vongdauId;

	public Trandau(int id, int vongdauId) {
		super();
		this.id = id;
		this.vongdauId = vongdauId;
	}

	public Trandau() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getVongdauId() {
		return vongdauId;
	}

	public void setVongdauId(int vongdauId) {
		this.vongdauId = vongdauId;
	}
	
	
	
}
