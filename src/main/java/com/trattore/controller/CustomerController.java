package com.trattore.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trattore.models.Customer;
import com.trattore.repository.CustomerRepository;

@Controller
public class CustomerController {
	private static org.apache.log4j.Logger log = Logger.getLogger(CustomerController.class);
	
	@Autowired
	private CustomerRepository customerRepository;
	@RequestMapping("/customer_registor")
	private String login(@RequestBody Customer customer ,ModelMap map,BindingResult result){
		log.info("method started");
		Customer save = customerRepository.save(customer);
		return "";
	}
	
	@RequestMapping("/")
	private String startPage(){
		return "registrationForm";
	}

}
