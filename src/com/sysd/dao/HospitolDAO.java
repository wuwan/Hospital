package com.sysd.dao;

import java.util.List;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sysd.entity.Hospitol;

/**
 	* A data access object (DAO) providing persistence and search support for Hospitol entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.sysd.entity.Hospitol
  * @author MyEclipse Persistence Tools 
 */
public class HospitolDAO extends HibernateDaoSupport  {
		 private static final Log log = LogFactory.getLog(HospitolDAO.class);
		//property constants
	public static final String HOS_NAME = "hosName";
	public static final String HOS_PROVINCE = "hosProvince";
	public static final String HOS_CITY = "hosCity";
	public static final String HOS_ADRESS = "hosAdress";
	public static final String HOS_PHONE = "hosPhone";



	protected void initDao() {
		//do nothing
	}
    
    public void save(Hospitol transientInstance) {
        log.debug("saving Hospitol instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Hospitol persistentInstance) {
        log.debug("deleting Hospitol instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Hospitol findById( java.lang.Integer id) {
        log.debug("getting Hospitol instance with id: " + id);
        try {
            Hospitol instance = (Hospitol) getHibernateTemplate()
                    .get("com.sysd.entity.Hospitol", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(Hospitol instance) {
        log.debug("finding Hospitol instance by example");
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
      log.debug("finding Hospitol instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Hospitol as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByHosName(Object hosName
	) {
		return findByProperty(HOS_NAME, hosName
		);
	}
	
	public List findByHosProvince(Object hosProvince
	) {
		return findByProperty(HOS_PROVINCE, hosProvince
		);
	}
	
	public List findByHosCity(Object hosCity
	) {
		return findByProperty(HOS_CITY, hosCity
		);
	}
	
	public List findByHosAdress(Object hosAdress
	) {
		return findByProperty(HOS_ADRESS, hosAdress
		);
	}
	
	public List findByHosPhone(Object hosPhone
	) {
		return findByProperty(HOS_PHONE, hosPhone
		);
	}
	

	public List findAll() {
		log.debug("finding all Hospitol instances");
		try {
			String queryString = "from Hospitol";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public Hospitol merge(Hospitol detachedInstance) {
        log.debug("merging Hospitol instance");
        try {
            Hospitol result = (Hospitol) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Hospitol instance) {
        log.debug("attaching dirty Hospitol instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(Hospitol instance) {
        log.debug("attaching clean Hospitol instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static HospitolDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (HospitolDAO) ctx.getBean("HospitolDAO");
	}
}