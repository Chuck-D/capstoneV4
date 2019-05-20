package com.claim.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Flier {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private int flierID;
	
	@Column
	private String firstName;
	
	@Column
	private String lastName;
	
	@Column
	private String email;	
			
	//@Column
	//private String height;
	
	@Column
	private String phone;
	
	//@Column
	//private String flierStatus; //frequent flier
	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Column
	private String password;
	
	@Column
	private String role;

	public int getFlierID() {
		return flierID;
	}

	public void setFlierID(int flierID) {
		this.flierID = flierID;
	}

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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Flier [flierID=" + flierID + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", phone=" + phone + ", password=" + password + "]";
	}

	
	/*public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getFlierStatus() {
		return flierStatus;
	}

	public void setFlierStatus(String flierStatus) {
		this.flierStatus = flierStatus;
	}*/

	

	
	
	
	
}
