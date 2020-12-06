package com.example.demo.model;

public class Danhsachchitiet{
	private int idTrandau;
	private String doithu;
	private String camquan;
	private float elothaydoi;
	public Danhsachchitiet() {
		super();
	}
	public Danhsachchitiet(int idTrandau, String doithu, String camquan, float elothaydoi) {
		super();
		this.idTrandau = idTrandau;
		this.doithu = doithu;
		this.camquan = camquan;
		this.elothaydoi = elothaydoi;
	}
	public int getIdTrandau() {
		return idTrandau;
	}
	public void setIdTrandau(int idTrandau) {
		this.idTrandau = idTrandau;
	}
	public String getDoithu() {
		return doithu;
	}
	public void setDoithu(String doithu) {
		this.doithu = doithu;
	}
	public String getCamquan() {
		return camquan;
	}
	public void setCamquan(String camquan) {
		this.camquan = camquan;
	}
	public float getElothaydoi() {
		return elothaydoi;
	}
	public void setElothaydoi(float elothaydoi) {
		this.elothaydoi = elothaydoi;
	}
	
	
	
	
}
