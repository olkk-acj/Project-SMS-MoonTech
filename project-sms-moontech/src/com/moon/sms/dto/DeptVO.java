package com.moon.sms.dto;


public class DeptVO {
	
	private String deptSq;
	private String code;
	private String deptNm;
	
	
	public String getDeptSq() {
		return deptSq;
	}
	public void setDeptSq(String deptSq) {
		this.deptSq = deptSq;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDeptNm() {
		return deptNm;
	}
	public void setDeptNm(String deptNm) {
		this.deptNm = deptNm;
	}
	
	
	@Override
	public String toString() {
		return "DeptVO [deptSq=" + deptSq + ", code=" + code + ", deptNm=" + deptNm + "]";
	}
	
	

}
