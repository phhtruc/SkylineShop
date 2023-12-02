package com.skylinecompany.entity;

import java.util.Date;

import com.skylinecompany.dto.Product_ImageDto;

public class Order {

	private int id_order;
	private int id_user;
	private Date createDay;
	private String address;
	private String phone;
	private String email;
	private String note;
	private String payment_status;
	private Order_detais order_details;
	private Product_ImageDto pro;
	private String voucherID;

	public String getVoucherID() {
		return voucherID;
	}

	public void setVoucherID(String voucherID) {
		this.voucherID = voucherID;
	}

	public Product_ImageDto getPro() {
		return pro;
	}

	public void setPro(Product_ImageDto pro) {
		this.pro = pro;
	}

	public Order_detais getOrder_details() {
		return order_details;
	}

	public void setOrder_details(Order_detais order_details) {
		this.order_details = order_details;
	}

	public int getId_order() {
		return id_order;
	}

	public void setId_order(int id_order) {
		this.id_order = id_order;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public Date getCreateDay() {
		return createDay;
	}

	public void setCreateDay(Date createDay) {
		this.createDay = createDay;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getPayment_status() {
		return payment_status;
	}

	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}

}
