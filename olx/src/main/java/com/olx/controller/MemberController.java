package com.olx.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.olx.model.MemberVO;
import com.olx.service.MemberService;

@Controller
public class MemberController {
		// DI 설정
		@Autowired
		MemberService service;
		
		//회원가입 페이지로 이동
		@RequestMapping("/join")
		public String join() {
			return "member/joinTerms";
		}
		
		@RequestMapping("/joinForm")
		public String joinForm() {
			return "member/joinForm";
		}

		//아이디 찾기 이동
		@RequestMapping("/idSearchForm")
		public String idSearchForm() {
			return "member/idSearchForm";
		}

		@RequestMapping("/pwdSearchForm")
		public String pwdSearchForm() {
			return "member/pwdSearchForm";
		}

		// 로그인 처리
		@ResponseBody
		@RequestMapping("/loginCheck")
		public String loginCheck(@RequestParam HashMap<String, Object> param, Model model,
												HttpSession session) {
		// 로그인 체크
		MemberVO vo = service.loginCheck(param);
		String result = "fail";
		if(vo!=null) {
			// 로그인 성공 시 세션 변수 지정
			session.setAttribute("sid", vo.getMemId());
			
			session.setAttribute("No", vo.getMemNo());
			System.out.println(vo.getMemNo());
			result ="success";
		}
		return result;
		}
		
		// 로그아웃
		@RequestMapping("/logout")
		public String logout(HttpSession session) {
			session.invalidate();
			return "redirect:/";
		}
		
		// 사용자 아이디 중복 확인
		@ResponseBody
		@RequestMapping("/memIdCheck")
		public String memIdCheck(@RequestParam("memId") String memId) {
			String memId_result = service.memIdCheck(memId);
			
			String result = "use";
			if(memId_result != null)
				result = "no_use";
			
			return result;
		}
		
		// 사용자 이메일 중복 확인
		@ResponseBody
		@RequestMapping("/memEmailCheck")
		public String memEmailCheck(@RequestParam("memEmail") String memEmail) {
			String memEmail_result = service.memEmailCheck(memEmail);
			
			String result = "use";
			if(memEmail_result != null)
				result = "no_use";
			
			return result;
		}
		
		// 회원가입
		@RequestMapping("/memJoin")
		public String memJoin(MemberVO vo,@RequestParam("memHP1") String memHP1,
							 @RequestParam("memHP2") String memHP2,
							 @RequestParam("memHP3") String memHP3) {
			
			vo.setMemPhone(memHP1+memHP2+memHP3);
			service.memJoin(vo);
			
			return "redirect:/";
		}

		//아이디 찾기
		@ResponseBody
		@RequestMapping("/idSearch")
		public ArrayList<MemberVO> idSearch(@RequestParam HashMap<String, Object> param, 
				Model model){

			ArrayList<MemberVO> memList = service.idSearch(param);
			model.addAttribute("memList", memList);

			return memList;
		}

		//비밀번호 찾기
		@ResponseBody
		@RequestMapping("/pwdSearch")
		public ArrayList<MemberVO> pwdSearch(@RequestParam HashMap<String, Object> param, 
				Model model){

			ArrayList<MemberVO> memList = service.pwdSearch(param);
			model.addAttribute("memList", memList);

			return memList;
		}

		// 전체 정보 조회
		@RequestMapping("/listAllProfile")
		public String listAllProfile() { //Model model
//			ArrayList<MemberVO> infoList = service.listAllProfile();
//			model.addAttribute("infoList", infoList);		
			return "profileListView";
		}
		
		// 프로필 수정 폼으로 이동
				@RequestMapping("/updateProfileForm")///{memId}
				public String updateProfileForm() {
					// @PathVariable String memId, Model model
//					// 상품번호 전달하고, 해당 상품 정보 받아오기 
//					MemberVO mem = service.profileInfo(memId); // 상세 상품 조회 메소드 그대로 사용
//					model.addAttribute("mem", mem);
					return "/member/updateProfileForm";
				}

				// 상품 정보 수정 : 수정된 상품 정보 DB에 저장
				@RequestMapping("/updateProfile")
				public String updateProfile(MemberVO member,
						@RequestParam("memEmailId") String memEmailId, @RequestParam("memEmail") String memEmail) { 
					String email = memEmailId + '@' + memEmail;
					member.setMemEmail(email);
					service.updateProfile(member);		
					return "redirect:./memberDetail";
				}

		
		//마이페이지로 이동
		@RequestMapping("/myPageForm")
		public String myPageForm() {
			return "/member/myPageForm";
		}
		
		//회원 정보 조회
		@RequestMapping("/memberDetail")
		public String memberDetail(Model model, HttpSession session) {
			
			String memId = (String)session.getAttribute("sid");
			MemberVO member = service.profileInfo(memId);
			
			model.addAttribute("member",member);
			
			return "/member/memberDetailForm";
		}
		
		
		//회원 탈퇴 폼으로 이동
		@RequestMapping("/withdrawMemberForm")
		public String withdrawMemberForm() {
			return "/member/withdrawMemberForm";
		}
		
		//회원 탈퇴 처리
		@ResponseBody
		@RequestMapping("/withdrawMember")
		public String withdrawMember(@RequestParam("memId") String memId,
				@RequestParam("memPwd") String memPwd) {
			MemberVO member = service.profileInfo(memId);
			String result = "fail";
			if(memPwd.equals(member.getMemPwd()) ) {
				service.withdrawMember(memId);
				result = "success";
			}
			return result;
		}
		
		
		
}