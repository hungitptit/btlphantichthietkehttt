package com.example.demo.model;

import com.example.demo.model.Thanhvien;

public class Kythu extends Thanhvien{

	private int kythuId;
	
	private int elotruocgiai;

	public Kythu(int kythuId, int elotruocgiai) {
		super();
		this.kythuId = kythuId;
		this.elotruocgiai = elotruocgiai;
	}
	public Kythu() {
		// TODO Auto-generated constructor stub'
		super();
	}
	public int getkythuId() {
		return kythuId;
	}

	public void setkythuId(int kythuId) {
		this.kythuId = kythuId;
	}

	public int getElotruocgiai() {
		return elotruocgiai;
	}

	public void setElotruocgiai(int elotruocgiai) {
		this.elotruocgiai = elotruocgiai;
	}
	
	
}
