package co.grandcircus.Lab23;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class GradesController {
	
	@Autowired
	private GradeDao dao;


	@RequestMapping("/")
	public String index()
	{
		return "redirect:/grades";
	}
	
	@RequestMapping("/grades")
	public String list(Model model)
	{
		List<Grade> grades= dao.findAll();
		model.addAttribute("grades",grades);
		return "list";
	}
	
	@RequestMapping("/grades/add")
	public String showAdd() {
		return "add";
	}
	
	@PostMapping("/grades/add")
	public String submitAdd(Grade grades) {	
		dao.create(grades);
		Long id=dao.findLastId();
		return "redirect:/grades/details?id="+id;
		}
	
	@RequestMapping("/grades/details")
	public String detail(@RequestParam("id") Long id, Model model) {
		Grade grades = dao.findById(id);
		model.addAttribute("grades", grades);
		return "details";
	}

	
	@RequestMapping("/grades/delete")
	public String remove(@RequestParam("id") Long id) {
		dao.delete(id);
		return "redirect:/grades";
	}
	
}
