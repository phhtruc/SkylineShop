package com.skylinecompany.Util;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import com.skylinecompany.dto.MyUser;

public class SecurityUtils {
	
	//Lưu trữ như session khi đăng nhập, khai báo để có thể gọi lấy ra info user
	public static MyUser getPrincipal() {
		MyUser myUser = (MyUser) (SecurityContextHolder.getContext().getAuthentication().getPrincipal());
		return myUser;
	}
	
	// Để getCode của role nạp ngược lại thèn CustomSuccessHandler
	@SuppressWarnings("unchecked")
	public static List<String> getAuthorities(){
		List<String> results = new ArrayList<String>();
		
		// authorities được push lên từ CustomUserDetailsService. ham nay de get no ra
		List<GrantedAuthority> authorities = (List<GrantedAuthority>)(SecurityContextHolder.getContext().getAuthentication().getAuthorities());
        for (GrantedAuthority authority : authorities) {
            results.add(authority.getAuthority());
        }
		return results;
	}
}
