package com.study.web.board.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.study.web.board.service.BoardService;

@Controller
public class BoardController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="boardService")
    private BoardService boardService;
	
    @RequestMapping(value="/testInterceptor.do")
    public ModelAndView testInterceptor(Map<String, Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("");
        log.debug("인터셉터 테스트");
         
        return mv;
    }
    
    @RequestMapping(value = "boardList.do")
    public ModelAndView boardList(Map<String, Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("/boardList");
        
        List<Map<String, Object>> list = boardService.selectBoardList(commandMap);
        mv.addObject("list", list);
        
        return mv;
    }

}
