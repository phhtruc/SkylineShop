//package com.skylinecompany.security;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.security.core.AuthenticationException;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
//import org.springframework.stereotype.Component;
//
//@Component
//public class CustomAuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler {
//
//    @Override
//    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
//        super.onAuthenticationFailure(request, response, exception);
//
//        // Lấy thông tin người dùng từ session
//        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//
//        // Kiểm tra trạng thái và đặt thông báo
//        if (userDetails instanceof YourUserDetails) {
//            YourUserDetails yourUserDetails = (YourUserDetails) userDetails;
//            if (yourUserDetails.getStatus() == 2) {
//                request.getSession().setAttribute(WebAttributes.AUTHENTICATION_EXCEPTION, "Tài khoản của bạn đã bị khóa.");
//            }
//        }
//    }
//}
//
