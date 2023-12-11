package com.jslhrd.myMartShop.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jslhrd.myMartShop.service.GoodsService;


@Controller
@RequestMapping("Usr/Goods")
public class GoodsController {
	private Logger log = 
			LoggerFactory.getLogger(GoodsController.class);

	@Autowired
	private GoodsService service;
	
	//상품등록 폼
	@GetMapping("goodsInsert")
	public void goodsInsert() {
		
	}
	
	//상품리스트
	@GetMapping("goodsList")
	public void goodsList() {
		
	}
}
