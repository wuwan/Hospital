package com.sysd.entity;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

/**
 * Hospitol entity. @author MyEclipse Persistence Tools
 */
@Component
public class Hospitol implements java.io.Serializable {

	// Fields

	private Integer hosId;
	private String hosName;
	private String hosProvince;
	private String hosCity;
	private String hosAdress;
	private String hosPhone;
	private Set parts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Hospitol() {
	}

	/** minimal constructor */
	public Hospitol(Integer hosId) {
		this.hosId = hosId;
	}

	/** full constructor */
	public Hospitol(Integer hosId, String hosName, String hosProvince,
			String hosCity, String hosAdress, String hosPhone, Set parts) {
		this.hosId = hosId;
		this.hosName = hosName;
		this.hosProvince = hosProvince;
		this.hosCity = hosCity;
		this.hosAdress = hosAdress;
		this.hosPhone = hosPhone;
		this.parts = parts;
	}

	// Property accessors

	public Integer getHosId() {
		return this.hosId;
	}

	public void setHosId(Integer hosId) {
		this.hosId = hosId;
	}

	public String getHosName() {
		return this.hosName;
	}

	public void setHosName(String hosName) {
		this.hosName = hosName;
	}

	public String getHosProvince() {
		return this.hosProvince;
	}

	public void setHosProvince(String hosProvince) {
		this.hosProvince = hosProvince;
	}

	public String getHosCity() {
		return this.hosCity;
	}

	public void setHosCity(String hosCity) {
		this.hosCity = hosCity;
	}

	public String getHosAdress() {
		return this.hosAdress;
	}

	public void setHosAdress(String hosAdress) {
		this.hosAdress = hosAdress;
	}

	public String getHosPhone() {
		return this.hosPhone;
	}

	public void setHosPhone(String hosPhone) {
		this.hosPhone = hosPhone;
	}

	public Set getParts() {
		return this.parts;
	}

	public void setParts(Set parts) {
		this.parts = parts;
	}

}