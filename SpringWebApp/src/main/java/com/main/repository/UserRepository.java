package com.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.main.entities.User;

public interface UserRepository extends JpaRepository<User,Integer> {
	User findByEmail(String email);

}
