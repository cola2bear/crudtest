package com.study.web.board.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.study.web.board.dao.BoardDAO;
import com.study.web.common.dao.AbstractDAO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	@Resource(name = "boardDAO")
	private BoardDAO boardDAO;
	
	@Override
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception {
        
       return boardDAO.selectBoardList(map);
   }

}
