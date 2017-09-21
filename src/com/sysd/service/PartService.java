package com.sysd.service;

import java.util.List;

import com.sysd.entity.Part;

public interface PartService
{
	public List<Part> FindAllpart();
	public List<Part> FindPartByHosp(String hosname);
}
