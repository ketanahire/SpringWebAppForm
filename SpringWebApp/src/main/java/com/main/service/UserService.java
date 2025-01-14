package com.main.service;

import java.util.List;

import com.main.entities.User;

public interface UserService {
	public  boolean addUser(User user);
	public User loginUser(String email,String password);
	public List<User> getAllUser();
	public User findUseByEmailId(String email);

}
