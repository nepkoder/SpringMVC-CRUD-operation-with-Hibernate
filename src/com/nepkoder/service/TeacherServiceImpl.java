package com.nepkoder.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nepkoder.dao.TeacherDAO;
import com.nepkoder.model.Teacher;

@Service
public class TeacherServiceImpl implements TeacherService {

	// inject teacher dao
	@Autowired
	private TeacherDAO teacherDAO;

	@Override
	@Transactional
	public List<Teacher> getAllTeachers() {
		return teacherDAO.getAllTeachers();
	}

	@Override
	@Transactional
	public void addTeacher(Teacher teacher) {

		teacherDAO.insert(teacher);

	}

	@Override
	@Transactional
	public Teacher getTeacherId(int theId) {
		// TODO Auto-generated method stub
		return teacherDAO.getTeacherId(theId);
	}

	@Override
	@Transactional
	public void updateTeacherInfo(Teacher teacher) {
		teacherDAO.updateTeacherInfo(teacher);
		
	}

	@Override
	@Transactional
	public void deleteTeacher(int theId) {
		// TODO Auto-generated method stub
		teacherDAO.deleteTeacher(theId);
	}

}
