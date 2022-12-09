package com.example.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class MemberDAO {
	@Autowired
	SqlSession sqlSession;
	public int insertMember(MemberVO data) {
		return sqlSession.insert("Member.insertMember", data);
	}
	// 글 삭제
	public int deleteMember(int sid) {
		return sqlSession.delete("Member.deleteMember", sid);
	}

	public int updateMember(MemberVO data) {
		return sqlSession.update("Member.updateMember", data);
	}

	public MemberVO getMember(int sid) {
		MemberVO one = sqlSession.selectOne("Member.getMember", sid);
		return one;
	}
	
	public List<MemberVO> getList() {
		List<MemberVO> list = sqlSession.selectList("Member.getList");
		return list;
	}
}
