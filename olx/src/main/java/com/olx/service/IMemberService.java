package com.olx.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.olx.model.MemberVO;

public interface IMemberService {
	MemberVO loginCheck(HashMap<String, Object> map); // 로그인
	String memIdCheck(String memId); // id 중복 확인
	String memEmailCheck(String email); // 이메일 중복 확인
	void memJoin(MemberVO vo); // 회원가입
	ArrayList<MemberVO> idSearch(HashMap<String, Object> map); //id찾기
	ArrayList<MemberVO> pwdSearch(HashMap<String, Object> map); //비밀번호찾기
	
	ArrayList<MemberVO> listAllProfile();   	// 전체 정보 조회
	MemberVO profileInfo(String memId);			// 프로필 정보 불러오기
	void updateProfile(MemberVO memVo);			// 프로필 수정
	void withdrawMember(String memId);	
}
