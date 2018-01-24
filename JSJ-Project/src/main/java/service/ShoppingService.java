package service;

import java.util.List;

import dto.Main_CategoryDTO;
import dto.MainproductsDTO;
import dto.MembersDTO;
import dto.PageDTO;

public interface ShoppingService {
	public int countProcess(int num); 
	public void registerProcess(MembersDTO dto);
	public int selectidProcess(MembersDTO dto);
	public int selectpassProcess(MembersDTO dto);
	public List<MainproductsDTO> selectitems(int num, PageDTO pv, int sort);
	public Main_CategoryDTO selectindexProcess(int num);
}
