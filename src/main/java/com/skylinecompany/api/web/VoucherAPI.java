package com.skylinecompany.api.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.skylinecompany.entity.VoucherEntity;
import com.skylinecompany.service.web.impl.VoucherServiceImpl;

@RestController
public class VoucherAPI {

	@Autowired
	private VoucherServiceImpl v;

	@GetMapping("/api/voucher/{id}")
	public ResponseEntity<String> getVoucher(HttpSession session, @PathVariable String id, HttpServletResponse response)
			throws IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);
		objectMapper.configure(SerializationFeature.INDENT_OUTPUT, true);

		String jsonResponse;

		VoucherEntity voucher = v.findVoucherByCode(id);

		try {
			double TotalPrice = (double) session.getAttribute("TotalPrice");

			double conditionPrice = voucher.getConditionPrice();
			if (voucher != null && TotalPrice > conditionPrice) {
				int discountAmount = (int) voucher.getDiscountAmount();
				String voucherCode = voucher.getVoucherCode();
				Map<String, Object> responseData = new HashMap<>();
				responseData.put("message", "Apply discount code successfully.");
				responseData.put("discountAmount", discountAmount);
				responseData.put("status", "success");

				session.setAttribute("discountAmount", discountAmount);
				session.setAttribute("voucherCode", voucherCode);
				session.setAttribute("voucherID", voucher.getVoucherID());

				jsonResponse = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(responseData);
			} else if (voucher != null && TotalPrice < conditionPrice) {
				Map<String, Object> responseData = new HashMap<>();
				responseData.put("message", "Not eligible to apply discount code.");
				responseData.put("discountAmount", 0);
				responseData.put("status", "error-error");

				session.removeAttribute("discountAmount");

				jsonResponse = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(responseData);
			} else {
				Map<String, Object> errorResponse = new HashMap<>();
				errorResponse.put("message", "No discount code found.");
				errorResponse.put("discountAmount", 0);
				errorResponse.put("status", "error");

				session.removeAttribute("discountAmount");

				jsonResponse = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(errorResponse);
			}
		} catch (

		Exception e) {
			e.printStackTrace();

			if (voucher != null) {
				int discountAmount = (int) voucher.getDiscountAmount();
				String voucherCode = voucher.getVoucherCode();
				Map<String, Object> responseData = new HashMap<>();
				responseData.put("message", "Apply discount code successfully.");
				responseData.put("discountAmount", discountAmount);
				responseData.put("status", "success");

				session.setAttribute("discountAmount", discountAmount);
				session.setAttribute("voucherCode", voucherCode);
				session.setAttribute("voucherID", voucher.getVoucherID());

				jsonResponse = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(responseData);
			} else {
				Map<String, Object> errorResponse = new HashMap<>();
				errorResponse.put("message", "TotalPrice is null.");
				errorResponse.put("discountAmount", 0);
				errorResponse.put("status", "error");

				session.removeAttribute("discountAmount");

				jsonResponse = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(errorResponse);
			}
		}

		response.setCharacterEncoding("UTF-8");
		return ResponseEntity.ok(jsonResponse);
	}
}
