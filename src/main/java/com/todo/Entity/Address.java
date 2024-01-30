package com.todo.Entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class Address {

	@Column(name="flat_number")
	private int platno;
	
	@Column(name="street",length=50)
	private String street;
	@Column(name="land_mark")
	private String landmark;
	
	private int pincode;
	private String city;
	private String state;
	private String Country;
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Address(int platno, String street, String landmark, int pincode, String city, String state, String country) {
		super();
		this.platno = platno;
		this.street = street;
		landmark = landmark;
		this.pincode = pincode;
		this.city = city;
		this.state = state;
		Country = country;
	}
	public int getPlatno() {
		return platno;
	}
	public void setPlatno(int platno) {
		this.platno = platno;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLnadmark(String landmark) {
		landmark = landmark;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	@Override
	public String toString() {
		return "Address [platno=" + platno + ", street=" + street + ", Lnadmark=" + landmark + ", pincode=" + pincode
				+ ", city=" + city + ", state=" + state + ", Country=" + Country + "]";
	}
	
	
}
