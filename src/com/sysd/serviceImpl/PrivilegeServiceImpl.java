package com.sysd.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sysd.dao.PrivilegeDAO;
import com.sysd.dao.RoleDAO;
import com.sysd.entity.Privilege;
import com.sysd.service.PrivilegeService;
@Component
public class PrivilegeServiceImpl implements PrivilegeService {

	private PrivilegeDAO privilegeDAO;
	@SuppressWarnings("unchecked")
	@Override
	public List<Privilege> findall()
	{
		return privilegeDAO.findAll();
	}
	public PrivilegeDAO getPrivilegeDAO()
	{
		return privilegeDAO;
	}
	@Autowired
	public void setPrivilegeDAO(PrivilegeDAO privilegeDAO)
	{
		this.privilegeDAO = privilegeDAO;
	}

}
