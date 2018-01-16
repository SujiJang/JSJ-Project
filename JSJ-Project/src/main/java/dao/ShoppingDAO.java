package dao;

import dto.MembersDTO;

public interface ShoppingDAO {
	public void register(MembersDTO dto);
	public int selectid(MembersDTO dto);
	public int selectpass(MembersDTO dto);
}
