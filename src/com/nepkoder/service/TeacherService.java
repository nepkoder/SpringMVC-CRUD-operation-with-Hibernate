package com.nepkoder.service;

import java.util.List;

import com.nepkoder.model.Teacher;

public interface TeacherService {
	
	public List<Teacher> getAllTeachers();
	
	public void addTeacher(Teacher teacher);
	
	public Teacher getTeacherId(int theId); // select by teacher id
	
	public void updateTeacherInfo(Teacher teacher);
	
	public void deleteTeacher(Teacher teacher);
	
	public List<Teacher> searchTeacher(String name);

}
