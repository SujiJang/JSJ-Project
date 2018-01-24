package dao;

import java.util.List;

import dto.Main_CategoryDTO;
import dto.MainproductsDTO;
import dto.MembersDTO;
import dto.PageDTO;

public interface ShoppingDAO {
	public void register(MembersDTO dto);
	public int selectid(MembersDTO dto);
	public int selectpass(MembersDTO dto);
	public List<MainproductsDTO> listitems(int num, PageDTO pv, int sort);
	public int selectcount(int num);
	public Main_CategoryDTO selectindex(int num);
}
