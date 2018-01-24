package dto;

import java.util.Date;

public class MainproductsDTO {

	private int mp_num;
	private int sub_num;
	private String mp_name;
	private int mp_price;
	private double mp_discount_rate;
	private Date mp_date;
	private String mp_main_image;
	private String mp_detail;
	private int mp_ordered_amount;
	private Sub_CategoryDTO dto;
	private int sort;
	
	public MainproductsDTO() {
		
	}

	public int getMp_num() {
		return mp_num;
	}

	public void setMp_num(int mp_num) {
		this.mp_num = mp_num;
	}

	public int getSub_num() {
		return sub_num;
	}

	public void setSub_num(int sub_num) {
		this.sub_num = sub_num;
	}

	public String getMp_name() {
		return mp_name;
	}

	public void setMp_name(String mp_name) {
		this.mp_name = mp_name;
	}

	public int getMp_price() {
		return mp_price;
	}

	public void setMp_price(int mp_price) {
		this.mp_price = mp_price;
	}

	public double getMp_discount_rate() {
		return mp_discount_rate;
	}

	public void setMp_discount_rate(double mp_discount_rate) {
		this.mp_discount_rate = mp_discount_rate;
	}

	public Date getMp_date() {
		return mp_date;
	}

	public void setMp_date(Date mp_date) {
		this.mp_date = mp_date;
	}

	public String getMp_main_image() {
		return mp_main_image;
	}

	public void setMp_main_image(String mp_main_image) {
		this.mp_main_image = mp_main_image;
	}

	public String getMp_detail() {
		return mp_detail;
	}

	public void setMp_detail(String mp_detail) {
		this.mp_detail = mp_detail;
	}

	public int getMp_ordered_amount() {
		return mp_ordered_amount;
	}

	public void setMp_ordered_amount(int mp_ordered_amount) {
		this.mp_ordered_amount = mp_ordered_amount;
	}

	public Sub_CategoryDTO getDto() {
		return dto;
	}

	public void setDto(Sub_CategoryDTO dto) {
		this.dto = dto;
	}
	
	public int getSort() {
		return sort;
	}

	public void setSort(int sort) {
		this.sort = sort;
	}

	
}
