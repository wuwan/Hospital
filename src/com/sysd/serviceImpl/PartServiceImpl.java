package com.sysd.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sysd.dao.PartDAO;
import com.sysd.entity.Part;
import com.sysd.service.PartService;
@Component
public class PartServiceImpl implements PartService
{
	private PartDAO partDAO;
	@SuppressWarnings("unchecked")
	@Override
	public List<Part> FindAllpart()
	{
		return  partDAO.findAll();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Part> FindPartByHosp(String hosname)
	{
		return partDAO.findByProperty("hospitol.hosName", hosname);
	}

	public PartDAO getPartDAO()
	{
		return partDAO;
	}
	@Autowired
	public void setPartDAO(PartDAO partDAO)
	{
		this.partDAO = partDAO;
	}

}
