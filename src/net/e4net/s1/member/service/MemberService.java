package net.e4net.s1.member.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import net.e4net.s1.comn.TestService;
import net.e4net.s1.main.vo.LoginDVO;
import net.e4net.s1.main.vo.LoginPVO;
import net.e4net.s1.main.vo.RegisterDVO;

/*
**
* 멤버 서비스.
* 
* @author E4NET
* @version 1.0
*/

@Service("MemberService")
public class MemberService extends TestService {
	
	private static final long serialVersionUID = 2525244630168443366L;
	/**
	 * 로그인 된 사용자의 정보 조회(from tb_mem).
	 * 
	 * @param pvo
	 * @return
	 * @throws Exception
	 */
	public RegisterDVO selectLogin(String id) throws Exception {
		RegisterDVO dvo = null;
		SqlSession session = null;
		try {
			session = openSession(true);
			dvo = (RegisterDVO)session.selectOne("main.selectLoginInfoAll", id);
		} catch (Throwable t) {
			daoException(t);
		} finally {
			closeSession(session);
		}
		return dvo;
	}


}
