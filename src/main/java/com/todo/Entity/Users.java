package com.todo.Entity;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_details")
public class Users {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	@Column(name="username")
	private String username;
	private String email;
	private String password;
	private String contact;
	private String high_education;
	private String area_of_interest;
	
//	@Embedded
//	private Address address;

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

//	public Users(long id, String username, String email, String password, String contact, String high_education,
//			String area_of_interest, Address address) {
//		super();
//		this.id = id;
//		this.username = username;
//		this.email = email;
//		this.password = password;
//		this.contact = contact;
//		this.high_education = high_education;
//		this.area_of_interest = area_of_interest;
//		this.address = address;
//	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getHigh_education() {
		return high_education;
	}

	public void setHigh_education(String high_education) {
		this.high_education = high_education;
	}

	public String getArea_of_interest() {
		return area_of_interest;
	}

	public void setArea_of_interest(String area_of_interest) {
		this.area_of_interest = area_of_interest;
	}

	@Override
	public String toString() {
		return "Users [id=" + id + ", username=" + username + ", email=" + email + ", password=" + password
				+ ", contact=" + contact + ", high_education=" + high_education + ", area_of_interest="
				+ area_of_interest + "]";
	}

//	public Address getAddress() {
//		return address;
//	}
//
//	public void setAddress(Address address) {
//		this.address = address;
//	}

//	@Override
//	public String toString() {
//		return "Users [id=" + id + ", username=" + username + ", email=" + email + ", password=" + password
//				+ ", contact=" + contact + ", high_education=" + high_education + ", area_of_interest="
//				+ area_of_interest + ", address=" + address + "]";
//	}
	
	

}
