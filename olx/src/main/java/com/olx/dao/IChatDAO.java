package com.olx.dao;

import java.util.ArrayList;

import com.olx.model.ChatVO;


public interface IChatDAO {
	ArrayList<ChatVO> listAllChat(int postNo); 
	void insertChat(ChatVO vo);
	

}
