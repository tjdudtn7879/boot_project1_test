package com.boot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.boot.dto.BoardAttachDTO;
import com.boot.dto.BoardDTO;
import com.boot.dto.CommentDTO;
import com.boot.dto.PageDTO;
import com.boot.service.BoardService;
import com.boot.service.CommentService;
import com.boot.service.UploadService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BoardController {
	@Autowired
	private BoardService service;
	
	@Autowired
	private CommentService commentService;

	@Autowired
	private UploadService uploadService;
	
//	@RequestMapping("/list")
	@RequestMapping("/myPage")
	public String list(Model model) {
		log.info("@# list");
		
		ArrayList<BoardDTO> list = service.list();
		model.addAttribute("list", list);
		
		return "myPage";
	}
	
	@RequestMapping("/write")
//	public String write(@RequestParam HashMap<String, String> param) {
	public String write(BoardDTO boardDTO) {
		log.info("@# write");
		log.info("@# boardDTO=>"+boardDTO);
		
		if (boardDTO.getAttachList() != null) {
			boardDTO.getAttachList().forEach(attach -> log.info("@# attach=>"+attach));
		}
		
//		service.write(param);
		service.write(boardDTO);
		
		return "redirect:list";
	}
	
	@RequestMapping("/write_view")
	public String write_view() {
		log.info("@# write_view");
		
		return "write_view";
	}
	
	@RequestMapping("/content_view")
	public String content_view(@RequestParam HashMap<String, String> param, Model model) {
		log.info("@# content_view");
		
		BoardDTO dto = service.contentView(param);
		model.addAttribute("content_view", dto);
		
//		content_view.jsp 에서 pageMaker 를 가지고 페이징 처리
		model.addAttribute("pageMaker", param);
		
		// 해당 게시글에 작성된 댓글 리스트를 가져옴
		ArrayList<CommentDTO> commentList = commentService.findAll(param);
		model.addAttribute("commentList", commentList);
		
		return "content_view";
	}
	
	@RequestMapping("/modify")
//	public String modify(@RequestParam HashMap<String, String> param) {
	public String modify(@RequestParam HashMap<String, String> param, RedirectAttributes rttr) {
		log.info("@# modify");
		log.info("@# param=>"+param);
		
		service.modify(param);
		
//		페이지 이동시 뒤에 페이지번호, 글 갯수 추가
		rttr.addAttribute("pageNum", param.get("pageNum"));
		rttr.addAttribute("amount", param.get("amount"));

		return "redirect:list";
	}
	
	@RequestMapping("/delete")
//	public String delete(@RequestParam HashMap<String, String> param) {
	public String delete(@RequestParam HashMap<String, String> param, RedirectAttributes rttr) {
		log.info("@# delete");
		log.info("@# param=>"+param);
		log.info("@# boardNo=>"+param.get("boardNo"));
		
		List<BoardAttachDTO> fileList = uploadService.getFileList(Integer.parseInt(param.get("boardNo")));
		log.info("@# fileList=>"+fileList);
		
		service.delete(param);
		uploadService.deleteFiles(fileList);
		
//		페이지 이동시 뒤에 페이지번호, 글 갯수 추가
		rttr.addAttribute("pageNum", param.get("pageNum"));
		rttr.addAttribute("amount", param.get("amount"));
		
		return "redirect:list";
	}
	
}
















