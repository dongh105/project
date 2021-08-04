package kr.icia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/product/*")
@AllArgsConstructor
public class ProductController {
	
	
	@GetMapping("/all")
	public String product(Model model) {
		return "/product/all";
	}
	
	@GetMapping("/month")
	public String month(Model model) {
		return "/product/month";
	}
	
	@GetMapping("/desk")
	public String desk(Model model) {
		return "/product/desk";
	}
	
	@GetMapping("/chair")
	public String chair(Model model) {
		return "/product/chair";
	}
	
}
