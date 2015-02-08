package com.mimaraslan;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tblpersonel2")
public class Personel {
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "pid")
	private int personelid;
	private String personelAdi;
	private String personelSoyadi;
	
	@Column(name = "eposta")
	private String personelEmail;
	//----------------------------------------------
	public int getPersonelid() {
		return personelid;
	}
	public void setPersonelid(int personelid) {
		this.personelid = personelid;
	}
	//----------------------------------------------
	public String getPersonelAdi() {
		return personelAdi;
	}
	public void setPersonelAdi(String personelAdi) {
		this.personelAdi = personelAdi;
	}
	//----------------------------------------------
	public String getPersonelSoyadi() {
		return personelSoyadi;
	}
	public void setPersonelSoyadi(String personelSoyadi) {
		this.personelSoyadi = personelSoyadi;
	}
	public String getPersonelEmail() {
		return personelEmail;
	}
	public void setPersonelEmail(String personelEmail) {
		this.personelEmail = personelEmail;
	}
	
	
	
}
