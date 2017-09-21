package com.sysd.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sysd.entity.RolePrivilege;
import com.sysd.entity.RolePrivilegeId;

/**
 	* A data access object (DAO) providing persistence and search support for RolePrivilege entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.sysd.entity.RolePrivilege
  * @author MyEclipse Persistence Tools 
 */
public class RolePrivilegeDAO extends HibernateDaoSupport  {
		 private static final Log log = LogFactory.getLog(RolePrivilegeDAO.class);
		//property constants
	public static final String IDENTITY = "identity";



	protected void initDao() {
		//do nothing
	}
    
    public void save(RolePrivilege transientInstance) {
        log.debug("saving RolePrivilege instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(RolePrivilege persistentInstance) {
        log.debug("deleting RolePrivilege instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public RolePrivilege findById( com.sysd.entity.RolePrivilegeId id) {
        log.debug("getting RolePrivilege instance with id: " + id);
        try {
            RolePrivilege instance = (RolePrivilege) getHibernateTemplate()
                    .get("com.sysd.entity.RolePrivilege", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(RolePrivilege instance) {
        log.debug("finding RolePrivilege instance by example");
        try {
            List results = getHibernateTemplate().findByExample(instance);
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding RolePrivilege instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from RolePrivilege as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByIdentity(Object identity
	) {
		return findByProperty(IDENTITY, identity
		);
	}
	

	public List findAll() {
		log.debug("finding all RolePrivilege instances");
		try {
			String queryString = "from RolePrivilege";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public RolePrivilege merge(RolePrivilege detachedInstance) {
        log.debug("merging RolePrivilege instance");
        try {
            RolePrivilege result = (RolePrivilege) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(RolePrivilege instance) {
        log.debug("attaching dirty RolePrivilege instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(RolePrivilege instance) {
        log.debug("attaching clean RolePrivilege instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static RolePrivilegeDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (RolePrivilegeDAO) ctx.getBean("RolePrivilegeDAO");
	}
}