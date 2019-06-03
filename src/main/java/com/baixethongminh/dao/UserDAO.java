package com.baixethongminh.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baixethongminh.constant.SystemConstant;
import com.baixethongminh.entity.User;

@Repository	
@Transactional
public class UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	
	
	public User findOneByCardId(String cardId) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT u FROM User u WHERE u.cardId = :cardId", User.class)
				.setParameter("cardId", cardId)
				.uniqueResult();
	}
	
	public void save(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
	}
	
	public void update(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.update(user);
	}
	
	public void delete(int id) {
		Session session = sessionFactory.getCurrentSession();
		User user = session.find(User.class, id);
		session.delete(user);
	}
	
	public long count() {
		Session session = sessionFactory.getCurrentSession();
		return (Long) session.createQuery("SELECT COUNT(id) FROM User").uniqueResult();
	}

	public List<User> findPagination(int position) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM User", User.class)
				.setFirstResult(position).setMaxResults(SystemConstant.PAGE_SIZE)
				.getResultList();
	}
	
	public List<User> findAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT u FROM User u", User.class).getResultList();
	}
	
	public User findOneById(int id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(User.class, id);
	}
	
	public User findOneByUsername(String username) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM User WHERE username = :username", User.class)
				.setParameter("username", username)
				.uniqueResult();
	}
	
}
