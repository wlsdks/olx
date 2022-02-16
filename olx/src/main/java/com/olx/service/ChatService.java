package com.olx.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.olx.dao.IChatDAO;
import com.olx.model.ChatVO;

@Service
public class ChatService implements IChatService {

	@Autowired
	@Qualifier("IChatDAO")
	IChatDAO dao;
	
	
	@Override
	public ArrayList<ChatVO> listAllChat(int postNo) {
		// TODO Auto-generated method stub
		return dao.listAllChat(postNo);
	}


	@Override
	public void insertChat(ChatVO vo) {
		// TODO Auto-generated method stub
		dao.insertChat(vo);
	}





	

	
}
