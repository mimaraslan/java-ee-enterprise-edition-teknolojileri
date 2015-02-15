package com.mimaraslan.springinterface;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.FileSystemResource;

public class AppCalistir {

	public static void main(String[] args) {

		//Araba araba = new Araba();
		
		//BeanFactory beanFactory = new XmlBeanFactory(new FileSystemResource("springConf.xml"));
		//Araba araba = (Araba) beanFactory.getBean("araba");
		
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("springConf.xml");
		
		Araba araba = (Araba) applicationContext.getBean("araba");
		araba.calistir();
		
	}

}
