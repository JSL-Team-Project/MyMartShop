package com.jslhrd.myMartShop.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("Adm")
public class AdminController {
	private Logger log = 
			LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private AdminService service;
}
