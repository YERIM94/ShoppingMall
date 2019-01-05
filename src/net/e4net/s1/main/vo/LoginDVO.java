package net.e4net.s1.main.vo;

import lombok.EqualsAndHashCode;
import net.e4net.eiwaf.common.AbstractVO;

/**
 * 로그인 DataVO.
 * @author E4NET
 * @version 1.0
 */

@EqualsAndHashCode(callSuper=false)
public class LoginDVO extends AbstractVO  {

	private static final long serialVersionUID = -850700320290647312L;

	private String user_id;			//사용자아이디
	private String name;			//사용자명
	private String grp_cl;			//그룹코드
	private String user_status;		//사용자상태
	private String login_passwd;	//로그인패스워드
	private int fail_count;			//로그인실패횟수
	private String login_ip;		//로그인아이피
	
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
	public String getGrp_cl() {
		return grp_cl;
	}
	public void setGrp_cl(String grp_cl) {
		this.grp_cl = grp_cl;
	}
	public String getUser_status() {
		return user_status;
	}
	public void setUser_status(String user_status) {
		this.user_status = user_status;
	}
	public String getLogin_passwd() {
		return login_passwd;
	}
	public void setLogin_passwd(String login_passwd) {
		this.login_passwd = login_passwd;
	}
	public int getFail_count() {
		return fail_count;
	}
	public void setFail_count(int fail_count) {
		this.fail_count = fail_count;
	}
	public String getLogin_ip() {
		return login_ip;
	}
	public void setLogin_ip(String login_ip) {
		this.login_ip = login_ip;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}