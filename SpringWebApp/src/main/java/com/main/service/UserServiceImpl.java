package com.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.entities.User;
import com.main.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserRepository userRepo;
	
	public  boolean addUser(User user) {
		boolean status=false;
		try {
			userRepo.save(user);
			status= true;
		}catch(Exception e) {
			status= false;
		}
		return status;
		
	}

	@Override
	public User loginUser(String email, String password) {
		User validUser=userRepo.findByEmail(email);
		if(validUser!=null&&validUser.getPassword().equals(password)) {
			return validUser;
		}else {
			
		return null;
		}
	}

	@Override
	public List<User> getAllUser() {
		return userRepo.findAll();
	}

	@Override
	public User findUseByEmailId(String email) {
		return userRepo.findByEmail(email);
	}

	

}
