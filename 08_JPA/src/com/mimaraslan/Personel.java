package com.mimaraslan;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;
import static javax.persistence.GenerationType.IDENTITY;

/**
 * Entity implementation class for Entity: Personel
 *
 */
@Entity
@Table(name = "tblpersonel_jpa")
public class Personel implements Serializable {


	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id")
	private int personelId;
	private String personelAdi;
	private String personelSoyadi;
	private static final long serialVersionUID = 1L;

	public Personel() {
		super();
	}   
	public int getPersonelId() {
		return this.personelId;
	}

	public void setPersonelId(int personelId) {
		this.personelId = personelId;
	}   
	public String getPersonelAdi() {
		return this.personelAdi;
	}

	public void setPersonelAdi(String personelAdi) {
		this.personelAdi = personelAdi;
	}   
	public String getPersonelSoyadi() {
		return this.personelSoyadi;
	}

	public void setPersonelSoyadi(String personelSoyadi) {
		this.personelSoyadi = personelSoyadi;
	}
	@Override
	public String toString() {
		return "Personel [personelId=" + personelId + 
				", personelAdi=" + personelAdi + 
				", personelSoyadi=" + personelSoyadi + "]";
	}
	
	
	
   
}
