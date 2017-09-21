package com.hos.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sysd.entity.Docpaiban;

public class docpaibanDao extends HibernateDaoSupport{
	/**查询*/
	/* @SuppressWarnings("unchecked")
	public List<Xinxi> getObjects(String queryString) throws Exception{
		return (List<Xinxi>)this.getHibernateTemplate().find(queryString);
	}
	*/
	private HibernateTemplate template;
	
	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}

	/**查询*/
	@SuppressWarnings("unchecked")
	public List<Docpaiban> getObjects(String queryString){
		List<Docpaiban> ls = null;
		try 
		{
		ls = (List<Docpaiban>)this.getHibernateTemplate().find(queryString);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return ls;
	}
	
	/**查询所有*/
	public List<Docpaiban> getAllObjects(Class<Docpaiban> clazz){
		return this.getHibernateTemplate().loadAll(clazz);
	}
	
	/**添加一个*/
	public <T> void addObject(T clazz){
		this.getHibernateTemplate().save(clazz);
	}
	
	/**更新指定的*/
	public <T> void updateObject(T clazz){
		this.getHibernateTemplate().saveOrUpdate(clazz);
	}

	/**删除指定的*/
	public <T> void deleteObject(T clazz){
		this.getHibernateTemplate().delete(clazz);
	}
	
	/**通过zzbm获取*/
	public <T> T getObject(Class<T> clazz,Serializable zzbm){
		return this.getHibernateTemplate().get(clazz, zzbm);
	}
	 public List<Docpaiban> findByHql(String hql, Object... objects) {
			return (List<Docpaiban>) this.getHibernateTemplate().find(hql,objects);
		}
}
