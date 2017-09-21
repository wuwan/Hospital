package com.sysd.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sysd.dao.DocpaibanDAO;
import com.sysd.entity.Docpaiban;
import com.sysd.entity.User;
import com.sysd.service.PaiBanService;
import com.sysd.tests.DocPaibans;
@Component
public class PaiBanServiceImpl implements PaiBanService
{
	private DocpaibanDAO docpaibanDAO;
	
	@Override
	public Docpaiban AddPaiBan(Integer docid ,User user)
	{
		try
		{
			docpaibanDAO.save(DocPaibans.paiban(docid,user));
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

		return DocPaibans.paiban(docid,user);
	}

	@Override
	public boolean ChangePaiban(Integer docid)
	{
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Docpaiban> FindPaiBanByDocId(Integer docid)
	{
		return docpaibanDAO.findByProperty("docId", docid);
	}
	public DocpaibanDAO getDocpaibanDAO()
	{
		return docpaibanDAO;
	}

	@Autowired
	public void setDocpaibanDAO(DocpaibanDAO docpaibanDAO)
	{
		this.docpaibanDAO = docpaibanDAO;
	}

	@Override
	public void SavePaiban(Docpaiban docpaiban)
	{	
			try
			{
				docpaibanDAO.save(docpaiban);
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		
	}

	@Override
	public void del(Docpaiban docpaiban)
	{	
		docpaibanDAO.delete(docpaiban);
	}

}
