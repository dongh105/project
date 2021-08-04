package kr.icia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
@RequestMapping("/user/*")
public class UserRegisterController {

	@GetMapping("/userReg")
	public String userReg() {
		return "user/userReg";
	}
}


