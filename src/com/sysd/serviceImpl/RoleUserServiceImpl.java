package com.sysd.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sysd.dao.RoleDAO;
import com.sysd.dao.RoleUserDAO;
import com.sysd.entity.Role;
import com.sysd.entity.RoleUser;
import com.sysd.entity.User;
import com.sysd.service.RolePrivilegeService;
import com.sysd.service.RoleUserService;
@Component
public class RoleUserServiceImpl implements RoleUserService {
	private RolePrivilegeService rolePrivilegeService;
	private RoleUserDAO roleUserDAO;
	private RoleDAO roleDAO;
	@Override
	public ArrayList<Integer> findRolebyUser(User user)
	{
		ArrayList<Integer> ids = new ArrayList<Integer>();
		try
		{
			String hqlString="from RoleUser  as model where model.id.userId=?";
			List<RoleUser>	 roleUsers=roleUserDAO.findbyHQL(hqlString,user.getId());
			System.out.println("roleUsers.size()"+roleUsers.size());
			for (int i=0;i<roleUsers.size();i++)
			{
				ids.add(roleUsers.get(i).getId().getRoleId())  ;
			}
		} 
		catch (Exception e)
		{	
				System.out.println("在"+this.getClass().getName()+"类，执行 findRolebyUser 方法的时候出现了如下错误：");
				e.printStackTrace();
				System.out.println("******************************************************************");
		}
		return ids;
	}
	public RolePrivilegeService getRolePrivilegeService() {
		return rolePrivilegeService;
	}
	public RoleUserDAO getRoleUserDAO() {
		return roleUserDAO;
	}
	@Override
	public boolean save(RoleUser roleUser)
	{
		boolean flag=true;
		try
		{
			roleUserDAO.save(roleUser);
		} 
		catch (Exception e)
		{	
				flag=false;
				System.out.println("在"+this.getClass().getName()+"类，执行save方法的时候出现了如下错误：");
				e.printStackTrace();
				System.out.println("******************************************************************");
		}
		return flag;
	}
	@Autowired
	public void setRolePrivilegeService(RolePrivilegeService rolePrivilegeService) {
		this.rolePrivilegeService = rolePrivilegeService;
	}
	@Autowired
	public void setRoleUserDAO(RoleUserDAO roleUserDAO) {
		this.roleUserDAO = roleUserDAO;
	}
	@Override
	public List<RoleUser> findbyuser(User user)
	{
		String hqlString="from RoleUser where userid=? ";
		return roleUserDAO.findbyHQL(hqlString, user.getId());
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Role> findallrole()
	{
		return roleDAO.findAll();
	}
	public RoleDAO getRoleDAO()
	{
		return roleDAO;
	}
	@Autowired
	public void setRoleDAO(RoleDAO roleDAO)
	{
		this.roleDAO = roleDAO;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Role> findrolebyuserid(Integer id)
	{
		return roleUserDAO.findByProperty("id.userId", id);
	}
	@Override
	public List<RoleUser> delete(List<RoleUser> ru)
	{
		for (RoleUser roleUser : ru)
		{
			roleUserDAO.delete(roleUser);
		}
		return ru;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<RoleUser> findbyuid(Integer id)
	{
		return roleUserDAO.findByProperty("id.userId", id);
	}

}
