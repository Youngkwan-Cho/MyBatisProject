package com.example.member;

import java.util.List;

public interface MemberService {
    public int insertMember(MemberVO vo);
    public int deleteMember(int sid);
    public int updateMember(MemberVO vo);
    public MemberVO getMember(int sid);
    public List<MemberVO> getList();
}
