package com.baixethongminh.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baixethongminh.entity.Role;

@Repository	
@Transactional
public class RoleDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	
	public Role findOneById(int id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(Role.class, id);
	}
	
	public Role findOneByName(String name) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from Role where name = :name", Role.class)
				.setParameter("name", name)
				.getSingleResult();
	}
	
	public List<Role> findAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT r FROM Role r", Role.class).getResultList();
	}
	
}
