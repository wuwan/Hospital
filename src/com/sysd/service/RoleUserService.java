package com.sysd.service;

import java.util.ArrayList;
import java.util.List;

import com.sysd.entity.Role;
import com.sysd.entity.RoleUser;
import com.sysd.entity.User;
public interface RoleUserService 
{
	public boolean save(RoleUser roleUser);
	public ArrayList<Integer> findRolebyUser(User user);
	public List<RoleUser> findbyuser(User user);
	public List<Role> findallrole();
	public List<Role> findrolebyuserid(Integer id);
	public List<RoleUser> delete(List<RoleUser> ru);
	public List<RoleUser> findbyuid(Integer id);
}
