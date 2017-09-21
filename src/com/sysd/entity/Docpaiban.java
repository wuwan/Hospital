package com.sysd.entity;

/**
 * Docpaiban entity. @author MyEclipse Persistence Tools
 */

public class Docpaiban implements java.io.Serializable
{

	// Fields

	private Integer id;
	private Integer docId;
	private String monam;
	private String monpm;
	private String moneve;
	private String tueam;
	private String tuepm;
	private String tueeve;
	private String wenam;
	private String wenpm;
	private String weneve;
	private String thuam;
	private String thupm;
	private String thueve;
	private String friam;
	private String fripm;
	private String frieve;
	private String satam;
	private String satpm;
	private String sateve;
	private String sunam;
	private String sunpm;
	private String suneve;

	// Constructors

	/** default constructor */
	public Docpaiban()
	{
	}

	/** full constructor */
	public Docpaiban(Integer docId, String monam, String monpm, String moneve,
			String tueam, String tuepm, String tueeve, String wenam,
			String wenpm, String weneve, String thuam, String thupm,
			String thueve, String friam, String fripm, String frieve,
			String satam, String satpm, String sateve, String sunam,
			String sunpm, String suneve)
	{
		this.docId = docId;
		this.monam = monam;
		this.monpm = monpm;
		this.moneve = moneve;
		this.tueam = tueam;
		this.tuepm = tuepm;
		this.tueeve = tueeve;
		this.wenam = wenam;
		this.wenpm = wenpm;
		this.weneve = weneve;
		this.thuam = thuam;
		this.thupm = thupm;
		this.thueve = thueve;
		this.friam = friam;
		this.fripm = fripm;
		this.frieve = frieve;
		this.satam = satam;
		this.satpm = satpm;
		this.sateve = sateve;
		this.sunam = sunam;
		this.sunpm = sunpm;
		this.suneve = suneve;
	}

	// Property accessors

	public Integer getId()
	{
		return this.id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public Integer getDocId()
	{
		return this.docId;
	}

	public void setDocId(Integer docId)
	{
		this.docId = docId;
	}

	public String getMonam()
	{
		return this.monam;
	}

	public void setMonam(String monam)
	{
		this.monam = monam;
	}

	public String getMonpm()
	{
		return this.monpm;
	}

	public void setMonpm(String monpm)
	{
		this.monpm = monpm;
	}

	public String getMoneve()
	{
		return this.moneve;
	}

	public void setMoneve(String moneve)
	{
		this.moneve = moneve;
	}

	public String getTueam()
	{
		return this.tueam;
	}

	public void setTueam(String tueam)
	{
		this.tueam = tueam;
	}

	public String getTuepm()
	{
		return this.tuepm;
	}

	public void setTuepm(String tuepm)
	{
		this.tuepm = tuepm;
	}

	public String getTueeve()
	{
		return this.tueeve;
	}

	public void setTueeve(String tueeve)
	{
		this.tueeve = tueeve;
	}

	public String getWenam()
	{
		return this.wenam;
	}

	public void setWenam(String wenam)
	{
		this.wenam = wenam;
	}

	public String getWenpm()
	{
		return this.wenpm;
	}

	public void setWenpm(String wenpm)
	{
		this.wenpm = wenpm;
	}

	public String getWeneve()
	{
		return this.weneve;
	}

	public void setWeneve(String weneve)
	{
		this.weneve = weneve;
	}

	public String getThuam()
	{
		return this.thuam;
	}

	public void setThuam(String thuam)
	{
		this.thuam = thuam;
	}

	public String getThupm()
	{
		return this.thupm;
	}

	public void setThupm(String thupm)
	{
		this.thupm = thupm;
	}

	public String getThueve()
	{
		return this.thueve;
	}

	public void setThueve(String thueve)
	{
		this.thueve = thueve;
	}

	public String getFriam()
	{
		return this.friam;
	}

	public void setFriam(String friam)
	{
		this.friam = friam;
	}

	public String getFripm()
	{
		return this.fripm;
	}

	public void setFripm(String fripm)
	{
		this.fripm = fripm;
	}

	public String getFrieve()
	{
		return this.frieve;
	}

	public void setFrieve(String frieve)
	{
		this.frieve = frieve;
	}

	public String getSatam()
	{
		return this.satam;
	}

	public void setSatam(String satam)
	{
		this.satam = satam;
	}

	public String getSatpm()
	{
		return this.satpm;
	}

	public void setSatpm(String satpm)
	{
		this.satpm = satpm;
	}

	public String getSateve()
	{
		return this.sateve;
	}

	public void setSateve(String sateve)
	{
		this.sateve = sateve;
	}

	public String getSunam()
	{
		return this.sunam;
	}

	public void setSunam(String sunam)
	{
		this.sunam = sunam;
	}

	public String getSunpm()
	{
		return this.sunpm;
	}

	public void setSunpm(String sunpm)
	{
		this.sunpm = sunpm;
	}

	public String getSuneve()
	{
		return this.suneve;
	}

	public void setSuneve(String suneve)
	{
		this.suneve = suneve;
	}

}