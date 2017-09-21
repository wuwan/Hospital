package com.sysd.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sysd.entity.Role;
import com.sysd.service.RoleService;
import com.sysd.service.RoleUserService;
@Controller("roleUserAction")
@Scope("prototype")
public class RoleUserAction extends ActionSupport
{
	private static final long serialVersionUID = 5652009367498167022L;
	private Role role;
	private RoleService roleService;
	private RoleUserService roleUserService;
	public Role getRole()
	{
		return role;
	}
	public RoleService getRoleService()
	{
		return roleService;
	}
	public RoleUserService getRoleUserService()
	{
		return roleUserService;
	}
	public void setRole(Role role)
	{
		this.role = role;
	}
	public void setRoleService(RoleService roleService)
	{
		this.roleService = roleService;
	}
	@Autowired
	public void setRoleUserService(RoleUserService roleUserService)
	{
		this.roleUserService = roleUserService;
	}
}
