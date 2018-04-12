package com.nepkoder.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nepkoder.model.Teacher;
import com.nepkoder.service.TeacherService;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

	@Autowired
	private TeacherService teacherService;

	@RequestMapping("/list")
	public String listTeacher(Model theModel) {

		// get teachers from the dao
		List<Teacher> theTeachers = teacherService.getAllTeachers();

		// add the teacher to the model
		theModel.addAttribute("teachersData", theTeachers);

		System.out.println(theTeachers);

		// return "list-teacher";
		return "list-teacher";
	}

	@GetMapping("/add")
	public String addNewTeacher() {
		return "add-teacher";
	}

	@PostMapping("/add") // new spring annotation that maps only get request and reject all other request
	public String saveTeacher(@RequestParam("teacherFirstName") String tFirst,
			@RequestParam("teacherLastName") String tLast, @RequestParam("teacherAddress") String tAddress,
			@RequestParam("teacherEmail") String tEmail) {
		// create model attribute to bind form data
		Teacher theTeacher = new Teacher();
		theTeacher.setFirstName(tFirst);
		theTeacher.setLastName(tLast);
		theTeacher.setAddress(tAddress);
		theTeacher.setEmail(tEmail);

		teacherService.addTeacher(theTeacher);

		// theModel.addAttribute("teacher",theTeacher);
		return "redirect:/teacher/list";
	}

	@GetMapping("/update/{id}")
	public String updateTeacher(@PathVariable("id") int theId, Model theModel) {

		Teacher theTeacher = teacherService.getTeacherId(theId);

		theModel.addAttribute("teacher", theTeacher);

		// display test
		System.out.println(theTeacher.getFirstName());
		System.out.println(theTeacher.getAddress());
		System.out.println(theTeacher.getEmail());

		return "edit-teacher";
	}

	@PostMapping("/update")
	public String saveUpdateData(@ModelAttribute("teacher") Teacher teacher) {
		
		teacherService.updateTeacherInfo(teacher);
		return "redirect:/teacher/list";
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteTeacherData(@PathVariable("id") int theId) {
		
		teacherService.deleteTeacher(theId);
		System.out.println(theId);
		return "redirect:/teacher/list";
		
	}

}
