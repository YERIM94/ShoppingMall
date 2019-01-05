package net.e4net.s1.main.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.EqualsAndHashCode;
import net.e4net.eiwaf.common.AbstractVO;

/**
 * 로그인 DataVO.
 * @author E4NET
 * @version 1.0
 */

@EqualsAndHashCode(callSuper=false)
public class RegisterDVO extends AbstractVO  {

	private static final long serialVersionUID = -850700320290647312L;

	SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
	Date date = new Date();
	String curDate = format.format(date).toString();
	
	private String usr_no; // 유저고유번호
	private String usr_cls;// 유저구분(회원/관리자)
	private String usr_id;// 유저아이디
	private String usr_pwd;// 유저패스워드
	private String usr_nm;// 유저네임
	private String usr_email;// 유저이메일
	private String reg_dtm = curDate;// 가입일자
	private String hp_ddd_no;// 휴대폰ddd번호(ex,010)
	private String hp_no;// 휴대폰뒷자리번호(ex.33334444, 3334444)

	private String zip_addr;// 집주소
	private String zip_cd;// 우편번호
	private String addr_first;
	private String addr_detail;
	
	//추가된 것
	private String edt_dtm;
	private String usr_email_site;
	private String zip_addr_first;
	private String zip_addr_last;
	private String zip_addr_ref;

	public String getEdt_dtm() {
		return edt_dtm;
	}
	public void setEdt_dtm(String edt_dtm) {
		this.edt_dtm = edt_dtm;
	}
	public String getUsr_email_site() {
		return usr_email_site;
	}
	public void setUsr_email_site(String usr_email_site) {
		this.usr_email_site = usr_email_site;
	}
	public String getZip_addr_first() {
		return zip_addr_first;
	}
	public void setZip_addr_first(String zip_addr_first) {
		this.zip_addr_first = zip_addr_first;
	}
	public String getZip_addr_last() {
		return zip_addr_last;
	}
	public void setZip_addr_last(String zip_addr_last) {
		this.zip_addr_last = zip_addr_last;
	}
	public String getZip_addr_ref() {
		return zip_addr_ref;
	}
	public void setZip_addr_ref(String zip_addr_ref) {
		this.zip_addr_ref = zip_addr_ref;
	}
	
	public String getUsr_no() {
		return usr_no;
	}
	public void setUsr_no(String usr_no) {
		this.usr_no = usr_no;
	}
	public String getUsr_cls() {
		return usr_cls;
	}
	public void setUsr_cls(String usr_cls) {
		this.usr_cls = usr_cls;
	}
	public String getUsr_id() {
		return usr_id;
	}
	public void setUsr_id(String usr_id) {
		this.usr_id = usr_id;
	}
	public String getUsr_pwd() {
		return usr_pwd;
	}
	public void setUsr_pwd(String usr_pwd) {
		this.usr_pwd = usr_pwd;
	}
	public String getUsr_nm() {
		return usr_nm;
	}
	public void setUsr_nm(String usr_nm) {
		this.usr_nm = usr_nm;
	}
	public String getUsr_email() {
		return usr_email;
	}
	public void setUsr_email(String usr_email) {
		this.usr_email = usr_email;
	}
	public String getReg_dtm() {
		return reg_dtm;
	}
	public void setReg_dtm(String reg_dtm) {
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		Date date = new Date();
		String curDate = format.format(date).toString();
		this.reg_dtm = curDate;
	}
	
	public String getHp_ddd_no() {
		return hp_ddd_no;
	}
	public void setHp_ddd_no(String hp_ddd_no) {
		this.hp_ddd_no = hp_ddd_no;
	}
	public String getHp_no() {
		return hp_no;
	}
	public void setHp_no(String hp_no) {
		this.hp_no = hp_no;
	}

	public String getZip_addr() {
		return zip_addr;
	}
	public void setZip_addr(String zip_addr) {
		String addr_all = this.addr_first + " " + this.addr_detail + " " + zip_addr;
		this.zip_addr = addr_all;
	}
	public String getAddr_first() {
		return addr_first;
	}
	public void setAddr_first(String addr_first) {
		this.addr_first = addr_first;
	}
	public String getAddr_detail() {
		return addr_detail;
	}
	public void setAddr_detail(String addr_detail) {
		this.addr_detail = addr_detail;
	}
	public String getZip_cd() {
		return zip_cd;
	}
	public void setZip_cd(String zip_cd) {
		this.zip_cd = zip_cd;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
