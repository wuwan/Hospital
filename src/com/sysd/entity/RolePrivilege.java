package com.sysd.entity;

import org.springframework.stereotype.Component;

/**
 * RolePrivilege entity. @author MyEclipse Persistence Tools
 */
@Component
public class RolePrivilege implements java.io.Serializable
{

	// Fields

	private RolePrivilegeId id;
	private Privilege privilege;
	private Role role;
	private Integer identity;

	// Constructors

	/** default constructor */
	public RolePrivilege()
	{
	}

	/** minimal constructor */
	public RolePrivilege(RolePrivilegeId id, Privilege privilege, Role role)
	{
		this.id = id;
		this.privilege = privilege;
		this.role = role;
	}

	/** full constructor */
	public RolePrivilege(RolePrivilegeId id, Privilege privilege, Role role,
			Integer identity)
	{
		this.id = id;
		this.privilege = privilege;
		this.role = role;
		this.identity = identity;
	}

	// Property accessors

	public RolePrivilegeId getId()
	{
		return this.id;
	}

	public void setId(RolePrivilegeId id)
	{
		this.id = id;
	}

	public Privilege getPrivilege()
	{
		return this.privilege;
	}

	public void setPrivilege(Privilege privilege)
	{
		this.privilege = privilege;
	}

	public Role getRole()
	{
		return this.role;
	}

	public void setRole(Role role)
	{
		this.role = role;
	}

	public Integer getIdentity()
	{
		return this.identity;
	}

	public void setIdentity(Integer identity)
	{
		this.identity = identity;
	}

}