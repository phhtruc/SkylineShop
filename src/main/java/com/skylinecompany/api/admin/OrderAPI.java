package com.skylinecompany.api.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skylinecompany.dto.OrderDto;
import com.skylinecompany.service.admin.impl.OrderAdminServiceImpl;

@RestController(value = "orderRestControllerOfAdmin")
@RequestMapping("/api/admin/orders")
public class OrderAPI {
	
	@Autowired
	OrderAdminServiceImpl orderServiceImpl;
	
	@GetMapping
	public List<OrderDto> getAllOrders(){
		List<OrderDto> list = orderServiceImpl.findAllOrderAdmin();
		for(OrderDto o : list) {
			if(o.getId_order() % 3 == 0) {
				o.setDelivery("Chưa chuyển");
			}else {
				o.setDelivery("Chuyển toàn bộ");
			}
		}
		return list;
	}

}
