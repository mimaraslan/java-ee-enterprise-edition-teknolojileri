package com.mimaraslan.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.mimaraslan.Personel;

public class HibernateDeneme {

	public static void main(String[] args) {
		
		Personel personel = new Personel();
		//personel.setPersonelid(1);
		personel.setPersonelAdi("Emre");
		personel.setPersonelSoyadi("Yavuz");
		personel.setPersonelEmail("emre.yavuz216@yahoo.com");
		//---------------------------------
		SessionFactory sessionFactory =new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(personel);	
		session.getTransaction().commit();
		
		
	}
	
	

	
}
