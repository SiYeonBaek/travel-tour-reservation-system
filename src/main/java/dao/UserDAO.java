package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.UserVO;

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
	
}
