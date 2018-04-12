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
		// currentSession.createCriteria(Teacher.class).list();

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
		session.saveOrUpdate(theTeacher);

	}

	@Override
	public void deleteTeacher(int id) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		System.out.println(id);
		// delete object with primary key
		Query theQuery = currentSession.createQuery("delete from Teacher where id=:teacherId");
		theQuery.setParameter("teacherId", id);

		theQuery.executeUpdate();
	}

}
