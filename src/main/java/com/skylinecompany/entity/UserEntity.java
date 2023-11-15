package com.skylinecompany.entity;

public class UserEntity {

	private int id_user;
	private String fullName;
	private String email;
	private String phone;
	private String password;
	private int id_role;
	private String passwordconfirm;
	private String passwordconfirm1;
	private String imageuser;
	
	public UserEntity() {
		// TODO Auto-generated constructor stub
	}

	public UserEntity(int id_user, String fullName, String email, String phone, String password, int id_role,
			String passwordconfirm, String passwordconfirm1, String imageuser) {
		super();
		this.id_user = id_user;
		this.fullName = fullName;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.id_role = id_role;
		this.passwordconfirm = passwordconfirm;
		this.passwordconfirm1 = passwordconfirm1;
		this.imageuser = imageuser;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
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

	public String getPasswordconfirm() {
		return passwordconfirm;
	}

	public void setPasswordconfirm(String passwordconfirm) {
		this.passwordconfirm = passwordconfirm;
	}

	public String getPasswordconfirm1() {
		return passwordconfirm1;
	}

	public void setPasswordconfirm1(String passwordconfirm1) {
		this.passwordconfirm1 = passwordconfirm1;
	}

	public String getImageuser() {
		return imageuser;
	}

	public void setImageuser(String imageuser) {
		this.imageuser = imageuser;
	}
	
	

}
