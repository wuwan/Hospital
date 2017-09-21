package com.sysd.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sysd.entity.Docpaiban;

/**
 	* A data access object (DAO) providing persistence and search support for Docpaiban entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.sysd.entity.Docpaiban
  * @author MyEclipse Persistence Tools 
 */
public class DocpaibanDAO extends HibernateDaoSupport  {
		 private static final Log log = LogFactory.getLog(DocpaibanDAO.class);
		//property constants
	public static final String MONAM = "monam";
	public static final String MONPM = "monpm";
	public static final String MONEVE = "moneve";
	public static final String TUEAM = "tueam";
	public static final String TUEPM = "tuepm";
	public static final String TUEEVE = "tueeve";
	public static final String WENAM = "wenam";
	public static final String WENPM = "wenpm";
	public static final String WENEVE = "weneve";
	public static final String THUAM = "thuam";
	public static final String THUPM = "thupm";
	public static final String THUEVE = "thueve";
	public static final String FRIAM = "friam";
	public static final String FRIPM = "fripm";
	public static final String FRIEVE = "frieve";
	public static final String SATAM = "satam";
	public static final String SATPM = "satpm";
	public static final String SATEVE = "sateve";
	public static final String SUNAM = "sunam";
	public static final String SUNPM = "sunpm";
	public static final String SUNEVE = "suneve";



	protected void initDao() 
	{
		 getHibernateTemplate().flush();
	}
    
    public void save(Docpaiban transientInstance) {
        log.debug("saving Docpaiban instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Docpaiban persistentInstance) {
        log.debug("deleting Docpaiban instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Docpaiban findById( java.lang.Integer id) {
        log.debug("getting Docpaiban instance with id: " + id);
        try {
            Docpaiban instance = (Docpaiban) getHibernateTemplate()
                    .get("com.sysd.entity.Docpaiban", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(Docpaiban instance) {
        log.debug("finding Docpaiban instance by example");
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
      log.debug("finding Docpaiban instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Docpaiban as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByMonam(Object monam
	) {
		return findByProperty(MONAM, monam
		);
	}
	
	public List findByMonpm(Object monpm
	) {
		return findByProperty(MONPM, monpm
		);
	}
	
	public List findByMoneve(Object moneve
	) {
		return findByProperty(MONEVE, moneve
		);
	}
	
	public List findByTueam(Object tueam
	) {
		return findByProperty(TUEAM, tueam
		);
	}
	
	public List findByTuepm(Object tuepm
	) {
		return findByProperty(TUEPM, tuepm
		);
	}
	
	public List findByTueeve(Object tueeve
	) {
		return findByProperty(TUEEVE, tueeve
		);
	}
	
	public List findByWenam(Object wenam
	) {
		return findByProperty(WENAM, wenam
		);
	}
	
	public List findByWenpm(Object wenpm
	) {
		return findByProperty(WENPM, wenpm
		);
	}
	
	public List findByWeneve(Object weneve
	) {
		return findByProperty(WENEVE, weneve
		);
	}
	
	public List findByThuam(Object thuam
	) {
		return findByProperty(THUAM, thuam
		);
	}
	
	public List findByThupm(Object thupm
	) {
		return findByProperty(THUPM, thupm
		);
	}
	
	public List findByThueve(Object thueve
	) {
		return findByProperty(THUEVE, thueve
		);
	}
	
	public List findByFriam(Object friam
	) {
		return findByProperty(FRIAM, friam
		);
	}
	
	public List findByFripm(Object fripm
	) {
		return findByProperty(FRIPM, fripm
		);
	}
	
	public List findByFrieve(Object frieve
	) {
		return findByProperty(FRIEVE, frieve
		);
	}
	
	public List findBySatam(Object satam
	) {
		return findByProperty(SATAM, satam
		);
	}
	
	public List findBySatpm(Object satpm
	) {
		return findByProperty(SATPM, satpm
		);
	}
	
	public List findBySateve(Object sateve
	) {
		return findByProperty(SATEVE, sateve
		);
	}
	
	public List findBySunam(Object sunam
	) {
		return findByProperty(SUNAM, sunam
		);
	}
	
	public List findBySunpm(Object sunpm
	) {
		return findByProperty(SUNPM, sunpm
		);
	}
	
	public List findBySuneve(Object suneve
	) {
		return findByProperty(SUNEVE, suneve
		);
	}
	

	public List findAll() {
		log.debug("finding all Docpaiban instances");
		try {
			String queryString = "from Docpaiban";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public Docpaiban merge(Docpaiban detachedInstance) {
        log.debug("merging Docpaiban instance");
        try {
            Docpaiban result = (Docpaiban) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Docpaiban instance) {
        log.debug("attaching dirty Docpaiban instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(Docpaiban instance) {
        log.debug("attaching clean Docpaiban instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static DocpaibanDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (DocpaibanDAO) ctx.getBean("DocpaibanDAO");
	}
}