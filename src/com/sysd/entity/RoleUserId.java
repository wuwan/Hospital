package com.sysd.entity;

import org.springframework.stereotype.Component;

/**
 * RoleUserId entity. @author MyEclipse Persistence Tools
 */
@Component
public class RoleUserId implements java.io.Serializable
{

	private static final long serialVersionUID = 1L;
	private Integer roleId;
	private Integer userId;

	// Constructors

	/** default constructor */
	public RoleUserId()
	{
	}

	/** full constructor */
	public RoleUserId(Integer roleId, Integer userId)
	{
		this.roleId = roleId;
		this.userId = userId;
	}

	// Property accessors

	public Integer getRoleId()
	{
		return this.roleId;
	}

	public void setRoleId(Integer roleId)
	{
		this.roleId = roleId;
	}

	public Integer getUserId()
	{
		return this.userId;
	}

	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}

	public boolean equals(Object other)
	{
		if ((this == other)) return true;
		if ((other == null)) return false;
		if (!(other instanceof RoleUserId)) return false;
		RoleUserId castOther = (RoleUserId) other;

		return ((this.getRoleId() == castOther.getRoleId()) || (this
				.getRoleId() != null && castOther.getRoleId() != null && this
				.getRoleId().equals(castOther.getRoleId())))
				&& ((this.getUserId() == castOther.getUserId()) || (this
						.getUserId() != null && castOther.getUserId() != null && this
						.getUserId().equals(castOther.getUserId())));
	}

	public int hashCode()
	{
		int result = 17;

		result = 37 * result
				+ (getRoleId() == null ? 0 : this.getRoleId().hashCode());
		result = 37 * result
				+ (getUserId() == null ? 0 : this.getUserId().hashCode());
		return result;
	}

}