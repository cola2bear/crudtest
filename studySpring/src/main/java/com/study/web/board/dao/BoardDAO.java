package com.study.web.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.study.web.common.dao.AbstractDAO;

@Repository("boardDAO")
public class BoardDAO extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) {
 
        return (List<Map<String,Object>>)selectList("board.selectBoardList", map);
	}
}
