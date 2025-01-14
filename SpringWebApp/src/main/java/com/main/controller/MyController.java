package com.main.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.main.Listener.UserRegistrationListener;
import com.main.entities.User;
import com.main.service.UserServiceImpl;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MyController  {
	@Autowired
	private UserServiceImpl userServiceImpl;
	@Autowired
	private UserRegistrationListener userListner;
	@GetMapping("/regForm")
	public String openRegForm(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}

	@PostMapping("/regSubmit")
	public String submitRegForm(@ModelAttribute("user")User user,Model model) {
	     User existingUser=userServiceImpl.findUseByEmailId(user.getEmail());
	     try {
		if(existingUser!=null) {
			model.addAttribute("sameEmail", "user with same email arelady exist, please try with different email");
	
		}
		else {

		boolean status=userServiceImpl.addUser(user);
		if(status) {
			model.addAttribute("successMsg", "user register successfully");
			userListner.sendEmailToUser(user);
			
		}	else {
			model.addAttribute("errorMsg", "user not register due to some error");
		}
		
		}
	      return "register";
	    }catch(Exception e) {
			e.printStackTrace();
			return "register";
		}
		
		
	}
	@GetMapping("/loginPage")
	public String openLogin(Model model) { 
		model.addAttribute("user",new User());
		return "login";
	}
	@PostMapping("/loginSubmit")
	public String submitLogin(@ModelAttribute("user") User user,Model model)
	{
		User validUser=userServiceImpl.loginUser(user.getEmail(), user.getPassword());
		if(validUser!=null) {
			model.addAttribute("model_name",validUser.getName());
		  return "profile";
		
	}
		else {
			model.addAttribute("errorMsg","Invalid User Id or Password");
			System.out.println("User not register");
			
			return "login";
		}
	}
	@GetMapping("/logout")
	public String logout(HttpServletRequest req) {
		HttpSession session=req.getSession(false);
		if(session!=null) {
			session.invalidate();
		}
		return "redirect:/loginPage";
		
	}

	
	
}


