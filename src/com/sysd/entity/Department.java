package com.sysd.entity;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

/**
 * Department entity. @author MyEclipse Persistence Tools
 */
@Component
public class Department implements java.io.Serializable {

	// Fields

	private Integer id;
	private Part part;
	private String name;
	private Set users = new HashSet(0);

	// Constructors

	/** default constructor */
	public Department() {
	}

	/** minimal constructor */
	public Department(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Department(Integer id, Part part, String name, Set users) {
		this.id = id;
		this.part = part;
		this.name = name;
		this.users = users;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Part getPart() {
		return this.part;
	}

	public void setPart(Part part) {
		this.part = part;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

}