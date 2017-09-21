package com.sysd.service;

import java.util.List;
import com.sysd.entity.Department;
public interface DepartmentService
{
	public List<Department> FindAll();
	public List<Department> findDepartmentByPart(String partname);
	public List<Department> findbyname(String name);
}
