package net.e4net.s1.test.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import net.e4net.eiwaf.web.util.page.PageVO;

/**
 * 사용자 목록조회 DataVO.
 * @author E4NET
 * @version 1.0
 */
@Data
@EqualsAndHashCode(callSuper=false)
public class UserDVO extends PageVO {

	private static final long serialVersionUID = -738415059274010232L;

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
	public String getLogin_dt() {
		return login_dt;
	}
	public void setLogin_dt(String login_dt) {
		this.login_dt = login_dt;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private String user_id;		//사용자아이디
	private String name;		//사용자명
	private String grp_cl;		//그룹코드
	private String user_status;	//사용자상태
	private String login_dt;		//가입일자

}