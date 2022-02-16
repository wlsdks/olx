package com.olx.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.olx.dao.IMemberDAO;
import com.olx.model.MemberVO;


@Service
public class MemberService implements IMemberService{

	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;

	@Override
	public MemberVO loginCheck(HashMap<String, Object> map) {
		return dao.loginCheck(map);
	}
	
	@Override
	public String memIdCheck(String memId) {
		return dao.memIdCheck(memId);
	}
	
	@Override
	public String memEmailCheck(String email) {
		return dao.memEmailCheck(email);
	}
	
	@Override
	public void memJoin(MemberVO vo) {
		dao.memJoin(vo);
	}
	
	@Override
	public MemberVO profileInfo(String memId) {
		return dao.profileInfo(memId);
	}
	
	@Override
	public void updateProfile(MemberVO memVo) {
		dao.updateProfile(memVo);
	}
	
	@Override
	public ArrayList<MemberVO> listAllProfile() {
		return dao.listAllProfile();
	}
	

	@Override
	public ArrayList<MemberVO> idSearch(HashMap<String, Object> map) {
		return dao.idSearch(map);
	}

	@Override
	public ArrayList<MemberVO> pwdSearch(HashMap<String, Object> map) {
		return dao.pwdSearch(map);
	}

	@Override
	public void withdrawMember(String memId) {
		dao.withdrawMember(memId);
		
	}




}
