package com.mimaraslan;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class JpaDeneme {

	public static void main(String[] args) {
		
		
		Personel personel = new Personel();
		//personel.setPersonelid(1);
		personel.setPersonelAdi("Ramil");
		personel.setPersonelSoyadi("Qurbanov");	
	
		//---JPA------------------------------
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("PU_08_JPA");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		
		entityTransaction.begin();
			entityManager.persist(personel);
		entityTransaction.commit();
		
		
		System.out.println(personel);
		
		entityManager.close();
		entityManagerFactory.close();
		
		//---HIBERNATE------------------------------
		/*
		SessionFactory sessionFactory =new Configuration().configure().buildSessionFactory();		
		Session session = sessionFactory.openSession();
		
		session.beginTransaction();
			session.save(personel);	
		session.getTransaction().commit();
		*/
		
		
	}
	
}
