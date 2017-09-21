package com.sysd.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.sysd.dao.RoleDAO;
import com.sysd.entity.Privilege;
import com.sysd.entity.RolePrivilege;
public interface RolePrivilegeService {
	
	public Set<Privilege> findbyRole(ArrayList<Integer> idsInteger);
	public List<RolePrivilege>  deleltebyPri(List<RolePrivilege> rolePrivileges);
	public void save(Integer roleid, Integer privilageid);
	public List<RolePrivilege> findbyroleid(Integer roleid);
}
