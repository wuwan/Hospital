package com.sysd.serviceImpl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.sysd.dao.DepartmentDAO;
import com.sysd.entity.Department;
import com.sysd.service.DepartmentService;
@Component
public class DepartmentServiceImpl implements DepartmentService
{
	private DepartmentDAO departmentDAO;
	@SuppressWarnings("unchecked")
	@Override
	public List<Department> FindAll()
	{
		return departmentDAO.findAll();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Department> findDepartmentByPart(String partname)
	{
		return departmentDAO.findByProperty("part.partName", partname);
	}

	public DepartmentDAO getDepartmentDAO()
	{
		return departmentDAO;
	}
	@Autowired
	public void setDepartmentDAO(DepartmentDAO departmentDAO)
	{
		this.departmentDAO = departmentDAO;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Department> findbyname(String name)
	{
		return departmentDAO.findByName(name);
	}

}
