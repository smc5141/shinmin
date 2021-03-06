package com.hk.kskp.dtos;

import java.util.Date;

public class MembersDto {
	private int m_seq;
	private String m_email;
	private String m_pw;
	private String m_status;
	private String m_name;
	private String m_phone;
	private Date m_regdate;
	private String m_acc;
	private int m_point;
	private int m_salary;
	private String m_img;
	
	public MembersDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MembersDto(int m_seq, String m_pw, String m_status, String m_name, String m_email, Date m_regdate,
			String m_acc, int m_point) {
		super();
		this.m_seq = m_seq;
		this.m_pw = m_pw;
		this.m_status = m_status;
		this.m_name = m_name;
		this.m_email = m_email;
		this.m_regdate = m_regdate;
		this.m_acc = m_acc;
		this.m_point = m_point;
	}


	public MembersDto(String m_email, String m_pw) {
		super();
		this.m_email = m_email;
		this.m_pw = m_pw;
	}

	public MembersDto(int m_seq, String m_email, String m_pw, String m_status, String m_name, String m_phone,
			Date m_regdate, String m_acc, int m_point, int m_salary,String m_img) {
		super();
		this.m_seq = m_seq;
		this.m_email = m_email;
		this.m_pw = m_pw;
		this.m_status = m_status;
		this.m_name = m_name;
		this.m_phone = m_phone;
		this.m_regdate = m_regdate;
		this.m_acc = m_acc;
		this.m_point = m_point;
		this.m_salary = m_salary;
		this.setM_img(m_img);
	}

	public int getM_seq() {
		return m_seq;
	}

	public void setM_seq(int m_seq) {
		this.m_seq = m_seq;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_status() {
		return m_status;
	}

	public void setM_status(String m_status) {
		this.m_status = m_status;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public Date getM_regdate() {
		return m_regdate;
	}

	public void setM_regdate(Date m_regdate) {
		this.m_regdate = m_regdate;
	}

	public String getM_acc() {
		return m_acc;
	}

	public void setM_acc(String m_acc) {
		this.m_acc = m_acc;
	}

	public int getM_point() {
		return m_point;
	}

	public void setM_point(int m_point) {
		this.m_point = m_point;
	}

	public int getM_salary() {
		return m_salary;
	}

	public void setM_salary(int m_salary) {
		this.m_salary = m_salary;
	}

	@Override
	public String toString() {
		return "MembersDto [m_seq=" + m_seq + ", m_email=" + m_email + ", m_pw=" + m_pw + ", m_status=" + m_status
				+ ", m_name=" + m_name + ", m_phone=" + m_phone + ", m_regdate=" + m_regdate + ", m_acc=" + m_acc
				+ ", m_point=" + m_point + ", m_salary=" + m_salary + "]";
	}

	public String getM_img() {
		return m_img;
	}

	public void setM_img(String m_img) {
		this.m_img = m_img;
	}


	
	
	

}
