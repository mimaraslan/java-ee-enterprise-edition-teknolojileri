package com.mimaraslan;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.Collection;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class TestMerkez {

	private Collection collection;
	
	@BeforeClass
	public static void metot1() {
		System.out.println("metot1 - @BeforeClass");
	}
	
	@AfterClass
	public static void metot2() {
		System.out.println("metot2 - @AfterClass");
	}
	
	@Before
	public void metot3() {
		collection = new ArrayList();
		System.out.println("metot3 - @Before");
	}
	
	@After
	public void metot4() {
		collection.clear();
		System.out.println("metot4 - @After");
	}
		
	@Test
	public  void metot6() {
		collection.add("deneme");
		 assertEquals(1,collection.size() );
		System.out.println("metot6 - @Test");
	}
	
	@Test
	public  void metot5() {
		 assertTrue(collection.isEmpty() );
		System.out.println("metot5 - @Test");
	}
	

	
	
	
}
