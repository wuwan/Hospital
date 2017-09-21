package com.sysd.dao;

import java.util.List;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sysd.entity.Privilege;

/**
 	* A data access object (DAO) providing persistence and search support for Privilege entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.sysd.entity.Privilege
  * @author MyEclipse Persistence Tools 
 */
public class PrivilegeDAO extends HibernateDaoSupport  {
		 private static final Log log = LogFactory.getLog(PrivilegeDAO.class);
		//property constants
	public static final String NAME = "name";
	public static final String URL = "url";
	public static final String PID = "pid";



	protected void initDao() {
		//do nothing
	}
    
    public void save(Privilege transientInstance) {
        log.debug("saving Privilege instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Privilege persistentInstance) {
        log.debug("deleting Privilege instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Privilege findById( java.lang.Integer id) {
        log.debug("getting Privilege instance with id: " + id);
        try {
            Privilege instance = (Privilege) getHibernateTemplate()
                    .get("com.sysd.entity.Privilege", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(Privilege instance) {
        log.debug("finding Privilege instance by example");
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
      log.debug("finding Privilege instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Privilege as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByName(Object name
	) {
		return findByProperty(NAME, name
		);
	}
	
	public List findByUrl(Object url
	) {
		return findByProperty(URL, url
		);
	}
	
	public List findByPid(Object pid
	) {
		return findByProperty(PID, pid
		);
	}
	

	public List findAll() {
		log.debug("finding all Privilege instances");
		try {
			String queryString = "from Privilege";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public Privilege merge(Privilege detachedInstance) {
        log.debug("merging Privilege instance");
        try {
            Privilege result = (Privilege) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Privilege instance) {
        log.debug("attaching dirty Privilege instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(Privilege instance) {
        log.debug("attaching clean Privilege instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static PrivilegeDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (PrivilegeDAO) ctx.getBean("PrivilegeDAO");
	}
}