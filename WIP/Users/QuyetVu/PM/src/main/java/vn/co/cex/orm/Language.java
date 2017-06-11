package vn.co.cex.orm;

// Generated Jan 28, 2015 9:41:06 PM by Hibernate Tools 4.0.0

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Language generated by hbm2java
 */
public class Language implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8856653937488334666L;
	private String languageCode;
	private String language;
	private String createdBy;
	private Date createdDate;
	private String lastModifiedBy;
	private Date lastModifiedDate;

	public Language() {
	}

	public Language(String languageCode) {
		super();
		this.languageCode = languageCode;
	}

	public Language(String languageCode, String language, String createdBy,
			Date createdDate, String lastModifiedBy, Date lastModifiedDate) {
		this.languageCode = languageCode;
		this.language = language;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
		this.lastModifiedBy = lastModifiedBy;
		this.lastModifiedDate = lastModifiedDate;
	}

	public String getLanguageCode() {
		return this.languageCode;
	}

	public void setLanguageCode(String languageCode) {
		this.languageCode = languageCode;
	}

	public String getLanguage() {
		return this.language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getCreatedBy() {
		return this.createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreatedDate() {
		return this.createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getLastModifiedBy() {
		return this.lastModifiedBy;
	}

	public void setLastModifiedBy(String lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}

	public Date getLastModifiedDate() {
		return this.lastModifiedDate;
	}

	public void setLastModifiedDate(Date lastModifiedDate) {
		this.lastModifiedDate = lastModifiedDate;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof Language))
			return false;
		Language castOther = (Language) other;
		return (this.getLanguageCode().equalsIgnoreCase(castOther.getLanguageCode()));
	}

	public int hashCode() {
		int result = 17;
		result = 37* result + (getLanguageCode() == null ? 0 : this.getLanguageCode()
						.hashCode());
		return result;
	}
}