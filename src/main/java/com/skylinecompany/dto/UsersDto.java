package com.skylinecompany.dto;

public class UsersDto {

	private int id_user;
	private String fullName;
	private String email;
	private String phone;
	private String imageuser;
	private int total_orders;
	private String latest_order_id;
	private String total_order_amount;

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

	public String getImageuser() {
		return imageuser;
	}

	public void setImageuser(String imageuser) {
		this.imageuser = imageuser;
	}

	public int getTotal_orders() {
		return total_orders;
	}

	public void setTotal_orders(int total_orders) {
		this.total_orders = total_orders;
	}

	public String getLatest_order_id() {
		return latest_order_id;
	}

	public void setLatest_order_id(String latest_order_id) {
		this.latest_order_id = latest_order_id;
	}

	public String getTotal_order_amount() {
		return total_order_amount;
	}

	public void setTotal_order_amount(String total_order_amount) {
		this.total_order_amount = total_order_amount;
	}

}
