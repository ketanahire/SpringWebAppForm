package com.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailSenderService {
	@Autowired
	private JavaMailSender mailSender;
	
	public void sendEmail(String toMail,String subject, String body) {
		SimpleMailMessage message=new SimpleMailMessage();
		message.setFrom("jagtapanushka9910@gmail.com");
		message.setTo(toMail);
		message.setText(body);
		message.setSubject(subject);
		mailSender.send(message);
		System.out.println("Mail send successfully");
	}

}
