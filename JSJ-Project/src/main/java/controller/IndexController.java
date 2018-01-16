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

	//메인페이지
	@RequestMapping("/index.do")
	public String process() {
		return "index";
	}
	
	//로그인페이지
	@RequestMapping("/login.do")
	public String loginprocess() {
		return "login";
	}
	
	//회원가입 페이지
	@RequestMapping("/join.do")
	public String joinprocess() {
		return "join";
	}
	
	//로그인버튼 눌렀을 때
	@RequestMapping(value="/confirm.do", method=RequestMethod.POST)
	public String confirmprocess(@RequestParam String returnUrl, MembersDTO dto) {
		if(service.selectidProcess(dto)==0) {
			return "noneid";
		} else {
			if(service.selectpassProcess(dto)==0) {
				return "nonepassword";
			} else {
				if(returnUrl.equals("join.do")) {
					return "redirect:"+"/index.do";
				} else {
					return "redirect:"+"/"+returnUrl;
				}
			}
		}
		
	}
	
	//회원가입 완료 버튼을 눌렀을 때
	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String registerprocess(MembersDTO dto) { //, @RequestParam("url") String url
		service.registerProcess(dto);
		return "redirect:"+"/index.do";
	}

}
