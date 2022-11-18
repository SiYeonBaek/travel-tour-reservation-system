package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import vo.UserVO;

@Repository("user_dao")
public class UserDAO {

	SqlSession sqlSession;
	
	public UserDAO(SqlSession sqlSession) {
		System.out.println("userdao 생성자 생성");
		this.sqlSession = sqlSession;
	}
	
//	// 로그인 시도
//	public UserVO UserLogin(UserVO vo) {
//		List<UserVO> list= sqlSession.selectOne("u_", vo);
//	}
	
	// 아이디 중복체크
	public UserVO id_check_selectOne(String uId) {
		UserVO vo = sqlSession.selectOne("u.id_check_selectOne", uId);
		return vo;
	}
	
	// 회원가입(insert)
	public int user_insert(UserVO vo) {
		int res = sqlSession.insert("u.user_insert", vo);
		return res;
	}
	
}























