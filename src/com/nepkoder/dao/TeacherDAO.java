package com.nepkoder.dao;

import java.util.List;

import com.nepkoder.model.Teacher;

public interface TeacherDAO {
	
	public List<Teacher> getAllTeachers();
	
	public void insert(Teacher tec);
	
	public Teacher getTeacherId(int theId);
	
	public void updateTeacherInfo(Teacher theTeacher);
	
	public void deleteTeacher(Teacher teacher);
	
	public List<Teacher> searchTeacher(String name);

}
