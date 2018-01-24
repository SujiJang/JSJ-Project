package controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dto.MainproductsDTO;
import dto.PageDTO;
import service.ShoppingService;

@Controller
@RequestMapping("/items/*")
public class ItemController {

	private ShoppingService service;
	private int currentPage;
	private PageDTO pdto;
	
	public ItemController() {
		
	}

	public ShoppingService getService() {
		return service;
	}

	public void setService(ShoppingService service) {
		this.service = service;
	}
	
	@RequestMapping("/list.do")
	public ModelAndView listprocess(int num, PageDTO pv, MainproductsDTO dto) {
		ModelAndView mav = new ModelAndView();
		int totalRecord = service.countProcess(num);
		if(pv.getCurrentPage() == 0)
			currentPage = 1;
		else
			currentPage = pv.getCurrentPage();
		pdto = new PageDTO(currentPage, totalRecord);
		mav.addObject("num", num);
		mav.addObject("sort", dto.getSort());
		mav.addObject("pv", pdto);
		mav.addObject("mc", service.selectindexProcess(num));
		mav.addObject("aList", service.selectitems(num, pdto, dto.getSort()));
		/*System.out.println(service.selectitems(num, pv));*/
		mav.setViewName("list");
		System.out.println(mav);
		return mav;
	}
	
}
