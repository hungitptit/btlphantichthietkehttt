package com.example.demo.model;

import java.util.Date;



public class Kythutrandau {

	private int id;

	private String camquan;
	

	private float diem;

	private float elothaydoi;

	private Date thoigianthidau;
	

	private int kythuId;
	

	private int trandauId;


	public Kythutrandau(int id, String camquan, float diem, float elothaydoi, Date thoigianthidau, int kythuId,
			int trandauId) {
		super();
		this.id = id;
		this.camquan = camquan;
		this.diem = diem;
		this.elothaydoi = elothaydoi;
		this.thoigianthidau = thoigianthidau;
		this.kythuId = kythuId;
		this.trandauId = trandauId;
	}


	public Kythutrandau() {
		super();
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getCamquan() {
		return camquan;
	}


	public void setCamquan(String camquan) {
		this.camquan = camquan;
	}


	public float getDiem() {
		return diem;
	}


	public void setDiem(float diem) {
		this.diem = diem;
	}


	public float getElothaydoi() {
		return elothaydoi;
	}


	public void setElothaydoi(float elothaydoi) {
		this.elothaydoi = elothaydoi;
	}


	public Date getThoigianthidau() {
		return thoigianthidau;
	}


	public void setThoigianthidau(Date thoigianthidau) {
		this.thoigianthidau = thoigianthidau;
	}


	public int getKythuId() {
		return kythuId;
	}


	public void setKythuId(int kythuId) {
		this.kythuId = kythuId;
	}


	public int getTrandauId() {
		return trandauId;
	}


	public void setTrandauId(int trandauId) {
		this.trandauId = trandauId;
	}
	
	
}
