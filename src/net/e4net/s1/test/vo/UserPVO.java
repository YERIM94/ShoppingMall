package net.e4net.s1.test.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import net.e4net.eiwaf.web.util.page.PageVO;

/**
 * 사용자 목록조회 ParameterVO.
 * @author E4NET
 * @version 1.0
 */
@Data
@EqualsAndHashCode(callSuper=false)
public class UserPVO extends PageVO {

	private static final long serialVersionUID = -738415059274010232L;

	private String user_id;		//사용자아이디
	private String name;		//사용자명
	private String user_status;	//사용자상태
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUser_status() {
		return user_status;
	}
	public void setUser_status(String user_status) {
		this.user_status = user_status;
	}
	public String getSt_login_dt() {
		return st_login_dt;
	}
	public void setSt_login_dt(String st_login_dt) {
		this.st_login_dt = st_login_dt;
	}
	public String getEd_login_dt() {
		return ed_login_dt;
	}
	public void setEd_login_dt(String ed_login_dt) {
		this.ed_login_dt = ed_login_dt;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private String st_login_dt;	//로그인검색일자 시작일자
	private String ed_login_dt;	//로그인검색일자 종료일자

}