package com.claim.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Survey {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private int surveyID;
	
	@Column
	private String firstName;
	
	@Column
	private String lastName;
	
	
	@Column
	private String email;	

	@Column
	private String review;
	
	@Column
	private int comfort;
	
	@Column
	private int legroom;
	
	@Column
	private String height;
	
	@Column
	private String airlines;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public int getComfort() {
		return comfort;
	}

	public void setComfort(int comfort) {
		this.comfort = comfort;
	}

	public int getLegroom() {
		return legroom;
	}

	public void setLegroom(int legroom) {
		this.legroom = legroom;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getAirlines() {
		return airlines;
	}

	public void setAirlines(String airlines) {
		this.airlines = airlines;
	}
	
	
}
