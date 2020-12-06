package com.example.demo.model;

public class TkElo extends Kythu{

	private float elohientai;
	private float elothaydoi;
	public TkElo() {
		super();
	}
	public TkElo(int kythuId, int elotruocgiai, float elohientai, float elothaydoi) {
		super(kythuId, elotruocgiai);
		this.elohientai = elohientai;
		this.elothaydoi = elothaydoi;
	}
	public float getElohientai() {
		return elohientai;
	}
	public void setElohientai(float elohientai) {
		this.elohientai = elohientai;
	}
	public float getElothaydoi() {
		return elothaydoi;
	}
	public void setElothaydoi(float elothaydoi) {
		this.elothaydoi = elothaydoi;
	}
		
	
}
