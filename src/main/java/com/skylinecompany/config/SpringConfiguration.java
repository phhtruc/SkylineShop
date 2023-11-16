/*
 * package com.skylinecompany.config;
 * 
 * import java.util.Properties;
 * 
 * import org.springframework.context.annotation.Bean; import
 * org.springframework.context.annotation.Configuration; import
 * org.springframework.mail.javamail.JavaMailSender; import
 * org.springframework.mail.javamail.JavaMailSenderImpl;
 * 
 * @Configuration public class SpringConfiguration {
 * 
 * @Bean public JavaMailSender getMaiSender() { //Using gmail String clientId =
 * "946928910591-a6uhbkq7ahh2nv3lnrvss0si8ll2pvo6.apps.googleusercontent.com";
 * String clientSecret = "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"; String scope =
 * "email";
 * 
 * OAuth2MailSender mailSender = new OAuth2MailSender(clientId, clientSecret,
 * scope); mailSender.setHost("smtp.gmail.com"); mailSender.setPort(587);
 * mailSender.setProtocol("smtp");
 * mailSender.setUsername("kientruc582@gmail.com");
 * 
 * return mailSender; }
 * 
 * }
 */