package com.sysd.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sysd.entity.RoleUser;
import com.sysd.entity.RoleUserId;

/**
 * A data access object (DAO) providing persistence and search support for
 * RoleUser entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.sysd.entity.RoleUser
 * @author MyEclipse Persistence Tools
 */
public class RoleUserDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(RoleUserDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(RoleUser transientInstance) {
		log.debug("saving RoleUser instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(RoleUser persistentInstance) {
		log.debug("deleting RoleUser instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public RoleUser findById(com.sysd.entity.RoleUserId id) {
		log.debug("getting RoleUser instance with id: " + id);
		try {
			RoleUser instance = (RoleUser) getHibernateTemplate().get(
					"com.sysd.entity.RoleUser", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(RoleUser instance) {
		log.debug("finding RoleUser instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding RoleUser instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from RoleUser as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<RoleUser> findbyHQL(String HQL, Object ...objects )
	{
		return  getHibernateTemplate().find(HQL, objects);
	}
	public List findAll() {
		log.debug("finding all RoleUser instances");
		try {
			String queryString = "from RoleUser";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public RoleUser merge(RoleUser detachedInstance) {
		log.debug("merging RoleUser instance");
		try {
			RoleUser result = (RoleUser) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(RoleUser instance) {
		log.debug("attaching dirty RoleUser instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(RoleUser instance) {
		log.debug("attaching clean RoleUser instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static RoleUserDAO getFromApplicationContext(ApplicationContext ctx) {
		return (RoleUserDAO) ctx.getBean("RoleUserDAO");
	}
}