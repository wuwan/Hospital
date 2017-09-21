package com.sysd.entity;

import org.springframework.stereotype.Component;

/**
 * RoleUser entity. @author MyEclipse Persistence Tools
 */
@Component
public class RoleUser implements java.io.Serializable
{

	// Fields

	private RoleUserId id;
	private Role role;
	private User user;
	private Integer indentity;

	// Constructors

	/** default constructor */
	public RoleUser()
	{
	}

	/** minimal constructor */
	public RoleUser(RoleUserId id, Role role, User user)
	{
		this.id = id;
		this.role = role;
		this.user = user;
	}

	/** full constructor */
	public RoleUser(RoleUserId id, Role role, User user, Integer indentity)
	{
		this.id = id;
		this.role = role;
		this.user = user;
		this.indentity = indentity;
	}

	// Property accessors

	public RoleUserId getId()
	{
		return this.id;
	}

	public void setId(RoleUserId id)
	{
		this.id = id;
	}

	public Role getRole()
	{
		return this.role;
	}

	public void setRole(Role role)
	{
		this.role = role;
	}

	public User getUser()
	{
		return this.user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}

	public Integer getIndentity()
	{
		return this.indentity;
	}

	public void setIndentity(Integer indentity)
	{
		this.indentity = indentity;
	}

}