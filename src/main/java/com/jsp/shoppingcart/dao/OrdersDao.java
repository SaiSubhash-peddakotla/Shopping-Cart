package com.jsp.shoppingcart.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.shoppingcart.dto.Orders;
@Repository
public class OrdersDao {
	
	@Autowired
	EntityManagerFactory emf;
	public void saveOrder(Orders p) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.persist(p);
		et.commit();
	}
	public void updateOrder(Orders p) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.merge(p);
		et.commit();
	}
	
	public void deleteOrderById(int id) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		Orders p=em.find(Orders.class,id);
		et.begin();
		em.remove(p);
		et.commit();
	}
	public Orders findOrderById(int id) {
		EntityManager em=emf.createEntityManager();
		
		Orders p=em.find(Orders.class,id);
		if(p!=null)
			return p;
		else
			return null;
	}
}
