package com.example.demo.model;

import java.util.Date;


public class Giaidau {

	private int id;

	private Date startdate;

	private Date enddate;
	
	public Giaidau() {
		// TODO Auto-generated constructor stub
	}

	public Giaidau(int id, Date startdate, Date enddate) {
		super();
		this.id = id;
		this.startdate = startdate;
		this.enddate = enddate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	
	
}
