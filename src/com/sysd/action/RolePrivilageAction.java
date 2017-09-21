package com.sysd.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import com.sysd.entity.Privilege;
import com.sysd.entity.Role;
import com.sysd.entity.RolePrivilege;
import com.sysd.service.PrivilegeService;
import com.sysd.service.RolePrivilegeService;
import com.sysd.service.RoleUserService;

@Controller("rolePrivilageAction")
@Scope("prototype")
public class RolePrivilageAction extends ActionSupport
{
	private static final long serialVersionUID = 5527973895684379342L;
	private List<Role>alroleList;
	private Integer id;
	private ArrayList<Integer> ids = new ArrayList<Integer>();
	private List<Privilege> privileges;// 所有权限信息
	private PrivilegeService privilegeService;

	private HttpServletRequest request = ServletActionContext.getRequest();
	private List<Role> roleList;
	private List<RolePrivilege> rolePrivileges;
	private RoleUserService roleUserService;
	private Set<Privilege> rpList;// 角色所拥有的权限
	private RolePrivilegeService rpservice;
	public String Changepri()
	{
		String idstring = request.getParameter("id");
		try
		{
			if (idstring != null && idstring != "")
			{
				id = Integer.valueOf(idstring);
				ids.add(id);
			}
			privileges = privilegeService.findall();
			setRpList(rpservice.findbyRole(ids));
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	
		return SUCCESS;
	}
	public String ChangeRPrivilge()
	{
		String idString =(String)request.getParameter("id");//獲取信息
		String[] rolespriv = request.getParameterValues("rolespriv");//所選權限id
		Integer id = Integer.parseInt(idString);//角色id
		ids.add(id);
		try
		{
			 rolePrivileges=rpservice.deleltebyPri(rpservice.findbyroleid(id));
			if(rolespriv!=null)
			{
				for (String priviligeid : rolespriv)
				{
					Integer pid=Integer.valueOf(priviligeid);
					rpservice.save(id, pid);
				}
				roleList = roleUserService.findallrole();
				request.setAttribute("change", "權限修改成功");
			}
		
		}
		catch (Exception e)
		{
			for (RolePrivilege rp : rolePrivileges)
			{
				rpservice.save(id, rp.getId().getPrivilegeId());
			}
			request.setAttribute("change", "權限修改失败");
			e.printStackTrace();
		}
		return SUCCESS;
	}
	public List<Role> getAlroleList()
	{
		return alroleList;
	}
	public Integer getId()
	{
		return id;
	}
	public List<Privilege> getPrivileges()
	{
		return privileges;
	}
	public PrivilegeService getPrivilegeService()
	{
		return privilegeService;
	}

	public List<Role> getRoleList()
	{
		return roleList;
	}
	public List<RolePrivilege> getRolePrivileges()
	{
		return rolePrivileges;
	}
	public RoleUserService getRoleUserService()
	{
		return roleUserService;
	}
	public Set<Privilege> getRpList()
	{
		return rpList;
	}
	public RolePrivilegeService getRpservice()
	{
		return rpservice;
	}

	public void setAlroleList(List<Role> alroleList)
	{
		this.alroleList = alroleList;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public void setPrivileges(List<Privilege> privileges)
	{
		this.privileges = privileges;
	}

	@Autowired
	public void setPrivilegeService(PrivilegeService privilegeService)
	{
		this.privilegeService = privilegeService;
	}

	public void setRoleList(List<Role> roleList)
	{
		this.roleList = roleList;
	}

	public void setRolePrivileges(List<RolePrivilege> rolePrivileges)
	{
		this.rolePrivileges = rolePrivileges;
	}
	@Autowired
	public void setRoleUserService(RoleUserService roleUserService)
	{
		this.roleUserService = roleUserService;
	}

	public void setRpList(Set<Privilege> rpList)
	{
		this.rpList = rpList;
	}

	@Autowired
	public void setRpservice(RolePrivilegeService rpservice)
	{
		this.rpservice = rpservice;
	}
}
