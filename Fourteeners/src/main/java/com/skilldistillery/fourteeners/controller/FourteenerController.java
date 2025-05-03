package com.skilldistillery.fourteeners.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.fourteeners.data.FourteenerDAO;
import com.skilldistillery.fourteeners.entities.Fourteener;

@Controller
public class FourteenerController {
	@Autowired
	private FourteenerDAO dao;
	
	@GetMapping({ "/", "home.do"})
	public String index(Model model) {
		List<Fourteener> fourteenerList = dao.getList();
		model.addAttribute("list", fourteenerList);
		return "home";
	}
	@GetMapping("getMountain.do")
	public String findById(@RequestParam("mtId") int mtId, Model model) {
		Fourteener found = dao.findById(mtId);
		model.addAttribute("mountain", found);
		return "show";
	}
}
