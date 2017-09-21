package com.hos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.hos.dao.docpaibanDao;
import com.opensymphony.xwork2.ActionContext;
import com.sysd.dao.DocpaibanDAO;
import com.sysd.entity.Docpaiban;

public class docpaibanService<T> {
	private docpaibanDao dpbdao;
	private DocpaibanDAO docpaibanDAO;
	public List<Docpaiban> queryDocpaiban(String num,Class<Docpaiban> clazz) throws Exception{
		if(num == null || "".equals(num))
			return dpbdao.getAllObjects(clazz);
		String queryString = "SELECT u FROM Docpaiban u WHERE u.docId ="+num;
		return dpbdao.getObjects(queryString);
	}
	
	public void delpaiban(Docpaiban paiban)
	{
		docpaibanDAO.delete(paiban);
	}
	public void addDocpaiban(T user) throws Exception{
		dpbdao.addObject(user);
		//System.out.println("审批表执行");
	}
	
	public void modifyUser(Docpaiban paiban) throws Exception{
		docpaibanDAO.save(paiban);
	}
	
	public void deleteUser(String zzbm,Class<Docpaiban> clazz) throws Exception{
		Docpaiban u = dpbdao.getObject(clazz, zzbm);
		dpbdao.deleteObject(u);
	}
	
	
	public T getUser(Class<T> clazz, String zzbm){
		return (T) dpbdao.getObject(clazz, zzbm);
	}


	public docpaibanDao getDpbdao() {
		return dpbdao;
	}


	public void setDpbdao(docpaibanDao dpbdao) {
		this.dpbdao = dpbdao;
	}
	public List<Docpaiban> findByLoginUserId(int id) {
		String hql="select distinct m from Docpaiban m where m.docId = "+id;
		return dpbdao.findByHql(hql);
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
	
}
