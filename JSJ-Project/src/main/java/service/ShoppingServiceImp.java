package service;

import dao.ShoppingDAO;
import dto.MembersDTO;

public class ShoppingServiceImp implements ShoppingService {

	private ShoppingDAO dao;
	
	public ShoppingServiceImp() {
		
	}

	public void setDao(ShoppingDAO dao) {
		this.dao = dao;
	}

	@Override
	public void registerProcess(MembersDTO dto) {
		dao.register(dto);
	}

}
