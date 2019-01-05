package net.e4net.s1.main.service;

import net.e4net.s1.comn.TestService;
import net.e4net.s1.main.vo.LoginPVO;
import net.e4net.s1.main.vo.RegisterDVO;
import net.e4net.s1.main.vo.LoginDVO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

/**
 * 로그인 서비스.
 * 
 * @author E4NET
 * @version 1.0
 */
@Service("MainService")
public class MainService extends TestService {

	private static final long serialVersionUID = -6849535441093100984L;

	/**
	 * 로그인 정보 조회.
	 * 
	 * @param pvo
	 * @return
	 * @throws Exception
	 */

	public LoginDVO selectLogin(RegisterDVO rdvo) throws Exception {
		LoginDVO dvo = null;
		SqlSession session = null;
		try {
			session = openSession(true);
			dvo = (LoginDVO)session.selectOne("main.selectLogin", rdvo);
		} catch (Throwable t) {
			daoException(t);
		} finally {
			closeSession(session);
		}
		return dvo;
	}

	/**
	 * 로그인 정보 업데이트.
	 * 
	 * @param svo
	 * @return
	 * @throws Exception
	 */
	public int updateLogin(LoginDVO dvo) throws Exception {
		int updCnt = -1;
		SqlSession session = null;
		try {
			session = openSession(true);
			updCnt = session.update("main.updateLogin", dvo);
		} catch (Throwable t) {
			daoException(t);
		} finally {
			closeSession(session);
		}
		return updCnt;
	}

	/**
	 * eiwaf_login에 현재 로그인 한 유저의 정보를 저장하기 위해 로그인 정보를 가져옴.
	 * 
	 * @return
	 * @throws Exception
	 */
	public RegisterDVO selectLoginInfo(LoginPVO pvo) throws Exception {
		SqlSession session = null;
		RegisterDVO dvo = null;
		try {
			session = openSession(true);
			dvo = (RegisterDVO) session.selectOne("main.selectLoginInfo",pvo);
			} catch (Throwable t) {
			daoException(t);
		} finally {
			closeSession(session);
		}
		return dvo;
	}
	
	/**
	 * eiwaf_login에 현재 로그인 한 유저의 정보를 저장.
	 * 
	 * @return
	 * @throws Exception
	 */
	public int insertLoginInfo(LoginDVO dvo) throws Exception {
		SqlSession session = null;
		int reg = -1;
		try {
			session = openSession(true);
			reg = session.insert("main.insertLoginInfo",dvo);
			} catch (Throwable t) {
			daoException(t);
		} finally {
			closeSession(session);
		}
		return reg;
	}
	
	/**
	 * 회원가입.
	 * 
	 * @return
	 * @throws Exception
	 */
	public int registerMem(RegisterDVO dvo) throws Exception {
		SqlSession session = null;
		int reg = -1;
		try {
			session = openSession(true);
			reg = session.insert("main.insertMem",dvo);
			} catch (Throwable t) {
			daoException(t);
		} finally {
			closeSession(session);
		}
		return reg;
	}
	
	

}