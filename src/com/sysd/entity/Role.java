package com.sysd.entity;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

/**
 * Role entity. @author MyEclipse Persistence Tools
 */
@Component
public class Role implements java.io.Serializable {

	// Fields

	private Integer roleId;
	private String roleName;
	private String roleMiaoShu;
	private String roleKz;
	private Set users = new HashSet(0);
	private Set privileges = new HashSet(0);

	// Constructors

	/** default constructor */
	public Role() {
	}

	/** minimal constructor */
	public Role(Integer roleId) {
		this.roleId = roleId;
	}

	/** full constructor */
	public Role(Integer roleId, String roleName, String roleMiaoShu,
			String roleKz, Set users, Set privileges) {
		this.roleId = roleId;
		this.roleName = roleName;
		this.roleMiaoShu = roleMiaoShu;
		this.roleKz = roleKz;
		this.users = users;
		this.privileges = privileges;
	}

	// Property accessors

	public Integer getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleMiaoShu() {
		return this.roleMiaoShu;
	}

	public void setRoleMiaoShu(String roleMiaoShu) {
		this.roleMiaoShu = roleMiaoShu;
	}

	public String getRoleKz() {
		return this.roleKz;
	}

	public void setRoleKz(String roleKz) {
		this.roleKz = roleKz;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

	public Set getPrivileges() {
		return this.privileges;
	}

	public void setPrivileges(Set privileges) {
		this.privileges = privileges;
	}

}