package dto;

import java.util.Date;

public class MembersDTO {
	
	private int m_num;
	private String m_id;
	private String m_password;
	private String m_phonenum;
	private String m_name;
	private String m_birth;
	private String m_gen;
	private Date m_date;
	private int m_point;
	
	public MembersDTO() {
		
	}

	public String getM_phonenum() {
		return m_phonenum;
	}



	public void setM_phonenum(String m_phonenum) {
		this.m_phonenum = m_phonenum;
	}



	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_password() {
		return m_password;
	}

	public void setM_password(String m_password) {
		this.m_password = m_password;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_birth() {
		return m_birth;
	}

	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}

	public String getM_gen() {
		return m_gen;
	}

	public void setM_gen(String m_gen) {
		this.m_gen = m_gen;
	}

	public Date getM_date() {
		return m_date;
	}

	public void setM_date(Date m_date) {
		this.m_date = m_date;
	}

	public int getM_point() {
		return m_point;
	}

	public void setM_point(int m_point) {
		this.m_point = m_point;
	}

	
	

}
