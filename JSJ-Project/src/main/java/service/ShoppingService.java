package service;

import dto.MembersDTO;

public interface ShoppingService {
	public void registerProcess(MembersDTO dto);
	public int selectidProcess(MembersDTO dto);
	public int selectpassProcess(MembersDTO dto);
}
