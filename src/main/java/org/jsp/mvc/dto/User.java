package org.jsp.mvc.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(uniqueConstraints = @UniqueConstraint(columnNames = {"email","phone"}))
public class User {
    
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull
	@Pattern(regexp = "[A-Za-z ]*",message = "must contain only letters and spaces")
	private String name;
	
	@NotNull
	private int age;
	
	@NotNull
	//@Size(min = 10,max = 12)
	@Digits(fraction = 0,integer = 12,message = "Incorrect Format, valid e.g. +919999999999")
	private long phone;
	
	@NotNull
	@NotEmpty(message = "Email address cannot be empty")
	@Email(message = "Invalid email address, e.g. valid email address:example@gmail.com")
	private String email;
	
	@NotNull
	private String password;
	
	@NotNull
	private String place;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
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
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
}
