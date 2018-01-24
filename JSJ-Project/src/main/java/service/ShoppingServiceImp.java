package service;

import java.util.List;

import dao.ShoppingDAO;
import dto.Main_CategoryDTO;
import dto.MainproductsDTO;
import dto.MembersDTO;
import dto.PageDTO;
import dto.Sub_CategoryDTO;

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

	@Override
	public int selectidProcess(MembersDTO dto) {
		return dao.selectid(dto);
	}

	@Override
	public int selectpassProcess(MembersDTO dto) {
		return dao.selectpass(dto);
	}

	@Override
	public List<MainproductsDTO> selectitems(int num, PageDTO pv, int sort) {
	
		return dao.listitems(num, pv, sort);
	}

	@Override
	public int countProcess(int num) {
		
		return dao.selectcount(num);
	}

	@Override
	public Main_CategoryDTO selectindexProcess(int num) {
		
		return dao.selectindex(num);
	}
	
	

}
