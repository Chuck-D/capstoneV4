package com.claim.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Airlines {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private int airlineID;
	
	
	public int getAirlineID() {
		return airlineID;
	}

	public void setAirlineID(int airlineID) {
		this.airlineID = airlineID;
	}

	public String getAirlineName() {
		return airlineName;
	}

	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}

	public int getComfortRating() {
		return comfortRating;
	}

	public void setComfortRating(int comfortRating) {
		this.comfortRating = comfortRating;
	}

	public int getLegroom() {
		return legroom;
	}

	public void setLegroom(int legroom) {
		this.legroom = legroom;
	}

	private String airlineName;
	
	@Column
	private int comfortRating;
	
	@Column
	private int legroom;

}
