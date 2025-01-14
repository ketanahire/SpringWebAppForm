package com.main.Listener;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;

import com.main.entities.User;
import com.main.service.EmailSenderService;

@Component
public class UserRegistrationListener {
	@Autowired
	private EmailSenderService emailSender;
	
	public void sendEmailToUser(User user) {
		emailSender.sendEmail(user.getEmail(),"Registration Sucessfull", "Dear "+user.getName()+","+ "\n\n"+"This is to inform you that you have register successfully");
	}

}
