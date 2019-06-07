package com.baixethongminh.dao;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class PriceDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public Integer findPrice() {
		return jdbcTemplate.queryForObject("select price from price", Integer.class);
	}
	public Integer findGiamGia() {
		return jdbcTemplate.queryForObject("select giamgia from price", Integer.class);
	}
	
	public Integer updateGiaThanhVaGiamGia(Integer price, Integer giamgia) {
		return jdbcTemplate.update("update price set price = ?, giamgia = ?", new Object[] { price, giamgia });
	}
}
