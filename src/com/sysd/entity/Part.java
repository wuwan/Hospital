package com.sysd.entity;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

/**
 * Part entity. @author MyEclipse Persistence Tools
 */
@Component
public class Part implements java.io.Serializable {

	// Fields

	private Integer partId;
	private Hospitol hospitol;
	private String partName;
	private Set departments = new HashSet(0);

	// Constructors

	/** default constructor */
	public Part() {
	}

	/** minimal constructor */
	public Part(Integer partId) {
		this.partId = partId;
	}

	/** full constructor */
	public Part(Integer partId, Hospitol hospitol, String partName,
			Set departments) {
		this.partId = partId;
		this.hospitol = hospitol;
		this.partName = partName;
		this.departments = departments;
	}

	// Property accessors

	public Integer getPartId() {
		return this.partId;
	}

	public void setPartId(Integer partId) {
		this.partId = partId;
	}

	public Hospitol getHospitol() {
		return this.hospitol;
	}

	public void setHospitol(Hospitol hospitol) {
		this.hospitol = hospitol;
	}

	public String getPartName() {
		return this.partName;
	}

	public void setPartName(String partName) {
		this.partName = partName;
	}

	public Set getDepartments() {
		return this.departments;
	}

	public void setDepartments(Set departments) {
		this.departments = departments;
	}

}