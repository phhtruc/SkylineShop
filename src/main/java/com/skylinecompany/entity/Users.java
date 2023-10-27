package com.skylinecompany.entity;

public class Users {
	private int id_user;
	private String username;
	private String email;
	private String phone;
	private String password;
	private int id_role;
	public Users() {
		// TODO Auto-generated constructor stub
	}
//	public UserEntity(int id_user, String username, String email, String phone, String password, int id_role) {
//		super();
//		this.id_user = id_user;
//		this.username = username;
//		this.email = email;
//		this.phone = phone;
//		this.password = password;
//		this.id_role = id_role;
//	}
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
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
	public int getId_role() {
		return id_role;
	}
	public void setId_role(int id_role) {
		this.id_role = id_role;
	}
	
}
