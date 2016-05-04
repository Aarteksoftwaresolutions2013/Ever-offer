package com.ever.offer.in.util;

import java.util.Properties;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;

public class SendMailProperty {

	public static Session mailProperty() {
		final String username = IConstant.FROM_EMAIL_ID;
		final String password = IConstant.FROM_PASSWORD;
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", "everoffer.in");
		props.put("mail.smtp.port", "25");
		props.put("mail.smtp.ssl.trust", "everoffer.in");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		return session;
	}
}
