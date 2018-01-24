package dto;

import java.util.List;

public class Main_CategoryDTO {

	private int mc_num;
	private String mc_name;
	private List<Sub_CategoryDTO> subList;
	
	public Main_CategoryDTO() {
		
	}

	public int getMc_num() {
		return mc_num;
	}

	public void setMc_num(int mc_num) {
		this.mc_num = mc_num;
	}

	public String getMc_name() {
		return mc_name;
	}

	public void setMc_name(String mc_name) {
		this.mc_name = mc_name;
	}

	public List<Sub_CategoryDTO> getSubList() {
		return subList;
	}

	public void setSubList(List<Sub_CategoryDTO> subList) {
		this.subList = subList;
	}

	
	
}
