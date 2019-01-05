package net.e4net.s1.main.vo;

import lombok.EqualsAndHashCode;
import net.e4net.eiwaf.common.AbstractVO;

/**
 * 로그인 ParameterVO.
 * @author E4NET
 * @version 1.0
 */

@EqualsAndHashCode(callSuper=false)
public class LoginPVO extends AbstractVO {

	private static final long serialVersionUID = -738415059274010232L;

	private String user_id;			//사용자아이디
	private String login_passwd;	//로그인패스워드
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getLogin_passwd() {
		return login_passwd;
	}
	public void setLogin_passwd(String login_passwd) {
		this.login_passwd = login_passwd;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}