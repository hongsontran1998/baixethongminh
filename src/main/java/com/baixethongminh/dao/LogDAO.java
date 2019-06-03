package com.baixethongminh.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baixethongminh.entity.Log;

@Repository
@Transactional
public class LogDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void save(Log log) {
		Session session = sessionFactory.getCurrentSession();
		session.save(log);
	}
	
	public List<Log> findAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT l FROM Log l", Log.class).getResultList();
	}
	
}
