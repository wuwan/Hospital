package com.sysd.action;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import com.sysd.entity.Department;
import com.sysd.entity.Part;
import com.sysd.service.DepartmentService;
import com.sysd.service.PartService;
@Controller
@Scope("prototype")
public class PartAction  extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	private List<Department>departments;
	private DepartmentService departmentService;
	private List<Part> parts;
	private PartService partService;
	public String FindPart()
	{
		try
		{
			parts=partService.FindAllpart();
			departments=departmentService.FindAll();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return SUCCESS;
	}
	public List<Department> getDepartments()
	{
		return departments;
	}
	public DepartmentService getDepartmentService()
	{
		return departmentService;
	}
	public List<Part> getParts()
	{
		return parts;
	}
	public PartService getPartService()
	{
		return partService;
	}
	public void setDepartments(List<Department> departments)
	{
		this.departments = departments;
	}
	@Autowired
	public void setDepartmentService(DepartmentService departmentService)
	{
		this.departmentService = departmentService;
	}
	public void setParts(List<Part> parts)
	{
		this.parts = parts;
	}
	@Autowired
	public void setPartService(PartService partService)
	{
		this.partService = partService;
	}
}
