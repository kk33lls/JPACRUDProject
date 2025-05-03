package com.skilldistillery.fourteeners.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	@GetMapping("deleteMt.do")
	public String deleteMt(Fourteener deleteMt, Model model) {
		dao.delete(deleteMt);
		return "home";
	}
	@PostMapping("createMt.do")
	public String createMt(Fourteener newMt, Model model) {
		dao.create(newMt);
		return "addedResult";
	}
	@GetMapping("goToMtUpdate.do")
	public String updateMt(@RequestParam("mtId") int mtId, Model model) {
		Fourteener found = dao.findById(mtId);
		model.addAttribute("mountain", found);
		return "update";
	}
	@PostMapping("updateMt.do")
	public String updatedMt(int mtId, Fourteener updatedMt, Model model) {
		dao.update(mtId, updatedMt);
		return "addedResult";
		
	}
}
