package com.sysd.entity;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

/**
 * Privilege entity. @author MyEclipse Persistence Tools
 */
@Component
public class Privilege implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String url;
	private Integer pid;
	private Set roles = new HashSet(0);

	// Constructors

	/** default constructor */
	public Privilege() {
	}

	/** minimal constructor */
	public Privilege(Integer id, Integer pid) {
		this.id = id;
		this.pid = pid;
	}

	/** full constructor */
	public Privilege(Integer id, String name, String url, Integer pid, Set roles) {
		this.id = id;
		this.name = name;
		this.url = url;
		this.pid = pid;
		this.roles = roles;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Set getRoles() {
		return this.roles;
	}

	public void setRoles(Set roles) {
		this.roles = roles;
	}

}