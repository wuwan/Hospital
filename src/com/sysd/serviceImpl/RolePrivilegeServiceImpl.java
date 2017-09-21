package com.sysd.serviceImpl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.sysd.dao.PrivilegeDAO;
import com.sysd.dao.RolePrivilegeDAO;
import com.sysd.entity.Privilege;
import com.sysd.entity.RolePrivilege;
import com.sysd.entity.RolePrivilegeId;
import com.sysd.service.RolePrivilegeService;
@Component
public class RolePrivilegeServiceImpl implements RolePrivilegeService {

  private PrivilegeDAO  privilegeDAO;
  private 	RolePrivilegeDAO rolePrivilegeDAO;
	@Override
	public Set<Privilege> findbyRole(ArrayList<Integer> ids) 
	{
		Set <Privilege> priset = new HashSet<Privilege>();
		try {
			for(int i=0;i<ids.size();i++)
			{
				@SuppressWarnings("unchecked")
				List<RolePrivilege> list= rolePrivilegeDAO.findByProperty("id.roleId", ids.get(i));
				for(int index=0;index<list.size();index++)
				{
					priset.add(privilegeDAO.findById(list.get(index).getId().getPrivilegeId()));
				}
			}
			
		} catch (Exception e) {
			System.out.println("在"+this.getClass().getName()+"类，执行  findbyRole 方法的时候出现了如下错误：");
			e.printStackTrace();
			System.out.println("******************************************************************");
		}
		return priset;
	}
	public PrivilegeDAO getPrivilegeDAO() {
	return privilegeDAO;
}
	public RolePrivilegeDAO getRolePrivilegeDAO() {
		return rolePrivilegeDAO;
	}
	@Autowired
public void setPrivilegeDAO(PrivilegeDAO privilegeDAO) {
	this.privilegeDAO = privilegeDAO;
}
	@Autowired
	public void setRolePrivilegeDAO(RolePrivilegeDAO rolePrivilegeDAO) {
		this.rolePrivilegeDAO = rolePrivilegeDAO;
	}
	@Override
	public void save(Integer roleid, Integer privilageid)
	{
		RolePrivilege rPrivilege=new RolePrivilege();
		RolePrivilegeId rpId=new RolePrivilegeId();
		rpId.setPrivilegeId(privilageid);
		rpId.setRoleId(roleid);
		rPrivilege.setId(rpId);
		rolePrivilegeDAO.save(rPrivilege);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<RolePrivilege> findbyroleid(Integer roleid)
	{
		return  rolePrivilegeDAO.findByProperty("id.roleId", roleid);
	}
	@Override
	public List<RolePrivilege> deleltebyPri(List<RolePrivilege> rolePrivileges)
	{
		try
		{
			for (RolePrivilege rolePrivilege : rolePrivileges)
			{
				rolePrivilegeDAO.delete(rolePrivilege);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return rolePrivileges ;
	}

}
