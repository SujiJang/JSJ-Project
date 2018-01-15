package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dto.MembersDTO;
import service.ShoppingService;

@Controller
public class IndexController {
	
	private ShoppingService service;
	
	public IndexController() {
		
	}
	
	public void setService(ShoppingService service) {
		this.service = service;
	}

	@RequestMapping("/index.do")
	public String process() {
		return "index";
	}
	
	@RequestMapping("/login.do")
	public String loginprocess() {
		return "login";
	}
	
	@RequestMapping("/join.do")
	public String joinprocess() {
		return "join";
	}
	
	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String registerprocess(MembersDTO dto) { //, @RequestParam("url") String url
		service.registerProcess(dto);
		return "redirect:"+"/login.do";
	}

}
