package com.skylinecompany.config;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.skylinecompany.dto.GooglePojo;
import com.skylinecompany.dto.MyUser;

@Component
public class GoogleUtils {

	public static String GOOGLE_CLIENT_ID = "946928910591-a6uhbkq7ahh2nv3lnrvss0si8ll2pvo6.apps.googleusercontent.com";
	public static String GOOGLE_CLIENT_SECRET = "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";
//	public static String GOOGLE_REDIRECT_URI = "http://localhost:8888/SkylineShop/login-google";
	public static String GOOGLE_REDIRECT_URI = "https://skyline-shop-e327475651af.herokuapp.com/login-google";
	public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
	public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
	public static String GOOGLE_GRANT_TYPE = "authorization_code";

	public String getToken(final String code) throws ClientProtocolException, IOException {
		String response = Request.Post(GOOGLE_LINK_GET_TOKEN)
				.bodyForm(Form.form().add("client_id", GOOGLE_CLIENT_ID).add("client_secret", GOOGLE_CLIENT_SECRET)
						.add("redirect_uri", GOOGLE_REDIRECT_URI).add("code", code).add("grant_type", GOOGLE_GRANT_TYPE)
						.build())
				.execute().returnContent().asString();
		ObjectMapper mapper = new ObjectMapper();
		JsonNode node = mapper.readTree(response).get("access_token");
		return node.textValue();
	}

	public GooglePojo getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
		String link = GOOGLE_LINK_GET_USER_INFO + accessToken;
		InputStream inputStream = Request.Get(link).execute().returnContent().asStream();
		ObjectMapper mapper = new ObjectMapper();
		GooglePojo googlePojo = mapper.readValue(inputStream, GooglePojo.class);
		return googlePojo;
	}

	public UserDetails buildUser(GooglePojo googlePojo) {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority("User"));
		MyUser myUser = new MyUser(googlePojo.getEmail(), "", true, true, true, true,
				authorities);
		myUser.setFullName(googlePojo.getName());
		myUser.setEmail(googlePojo.getEmail());
		return myUser;
	}
}
