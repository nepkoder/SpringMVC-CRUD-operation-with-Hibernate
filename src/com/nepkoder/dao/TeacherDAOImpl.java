package com.nepkoder.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nepkoder.model.Teacher;

@Repository
public class TeacherDAOImpl implements TeacherDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Teacher> getAllTeachers() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// List<Teacher> teacherList =
//		List<Teacher> list =  currentSession.createCriteria(Teacher.class).list();

		// create a query
		Query<Teacher> theQuery = currentSession.createQuery("from Teacher", Teacher.class);

		// execute query and get result list
		List<Teacher> teachers = theQuery.getResultList();

		// return the results
		return teachers;
	}

	@Override
	public void insert(Teacher tec) {
		// get current hibernate session
		Session session = sessionFactory.getCurrentSession();
		// save the teacher data to database
		session.save(tec);
	}

	@Override
	public Teacher getTeacherId(int theId) {

		Session currentSession = sessionFactory.getCurrentSession();

		Teacher theTeacher = currentSession.get(Teacher.class, theId);

		return theTeacher;
	}

	@Override
	public void updateTeacherInfo(Teacher theTeacher) {

		Session session = sessionFactory.getCurrentSession();
		session.update(theTeacher);

	}

	@Override
	public void deleteTeacher(Teacher teacher) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.delete(teacher);
	}

	@Override
	public List<Teacher> searchTeacher(String name) {

		Session currentSession = sessionFactory.getCurrentSession();

		Query<Teacher> theQuery = currentSession.createQuery("from Teacher t where t.firstName LIKE '%:searchName'",
				Teacher.class);
		theQuery.setParameter("searchName", name);

		List<Teacher> teacherList = theQuery.getResultList();

		return teacherList;

	}

}
