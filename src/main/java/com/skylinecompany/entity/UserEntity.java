package com.skylinecompany.entity;

public class UserEntity {

	private int id_user;
	private String userName;
	private String email;
	private String phone;
	private String password;
	private int id_role;
	private String fullName;

	public UserEntity() {

	}

	public UserEntity(int id_user, String userName, String email, String phone, String password, int id_role,
			String fullName) {
		super();
		this.id_user = id_user;
		this.userName = userName;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.id_role = id_role;
		this.fullName = fullName;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

}
