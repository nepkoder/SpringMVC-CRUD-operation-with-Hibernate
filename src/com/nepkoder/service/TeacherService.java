package com.nepkoder.service;

import java.util.List;

import com.nepkoder.model.Teacher;

public interface TeacherService {
	
	public List<Teacher> getAllTeachers();
	
	public void addTeacher(Teacher teacher);
	public Teacher getTeacherId(int theId);
	public void updateTeacherInfo(Teacher teacher);
	
	public void deleteTeacher(int theId);

}
