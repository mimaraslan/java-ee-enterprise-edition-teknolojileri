package com.mimaraslan.composition;

public class Araba {
	
	Yakit yakit;
	
	public Araba() {
		this.yakit = new Yakit();
	}

	public void calistir() {
		yakit.depo();
		System.out.println("Araba çalışıyor.");
	}
	
}