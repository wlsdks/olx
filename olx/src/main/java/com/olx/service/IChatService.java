package com.olx.service;

import java.util.ArrayList;

import com.olx.model.ChatVO;

public interface IChatService {
	ArrayList<ChatVO> listAllChat(int postNo); 
	void insertChat(ChatVO vo);

}
