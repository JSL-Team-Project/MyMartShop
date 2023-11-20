package com.jslhrd.myMartShop.controller;

import java.io.File;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jslhrd.myMartShop.domain.ArticleDTO;
import com.jslhrd.myMartShop.service.ArticleService;


@Controller
@RequestMapping("Usr/Article")
public class ArticleController {
	private Logger log = 
			LoggerFactory.getLogger(ArticleController.class);

	@Autowired
	private ArticleService service;
	
	@GetMapping("articleList")
	public void articleList() {
		
	}
	
	@GetMapping("articleWrite")
	public void articleWrite() {
		
	}
	
	@PostMapping("articleWrite")
	public String articleWrite_pro(MultipartHttpServletRequest request) {
		ArticleDTO dto = new ArticleDTO();
		dto.setMemberid(request.getParameter("memberId"));
		dto.setTitle(request.getParameter("title"));
		dto.setBody(request.getParameter("body"));
		
		dto.setType(request.getParameter("type"));
		
		String path=request.getServletContext().getRealPath("/upload/");
		MultipartFile mf = request.getFile("a_fileName");
		String a_fileName = mf.getOriginalFilename();
		File file = new File(path + a_fileName);
		try {
			mf.transferTo(file);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		dto.setA_fileName(request.getParameter("a_fileName"));
		int row = service.articleWrite(dto);

		return "articleList";
	}
}
