package com.olx.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.olx.model.PostVO;





public interface IPostService {
	ArrayList<PostVO> listAllPost(); 
	void insertPost(PostVO vo);
	void deletePost(String postNo);
	PostVO detailVeiwPost(int postNo);
	ArrayList<PostVO> searchPost(String postTag);
	ArrayList<PostVO> titleContentSearchPost(String postKeyword);
	ArrayList<PostVO> myPost(HashMap<String, Object> myOpt);								//내가 쓴 글 찾기
	int postListCount(int memNo);			
}
