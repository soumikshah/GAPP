package springmvc.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "appstatus")
public class ApplicationStatus implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	@Id
	@GeneratedValue
	private long id;
	
	private String comments;

	private Date date;

	private String status;

	public String getComments() {
		return comments;
	}

	public Date getDate() {
		return date;
	}

	public long getId() {
		return id;
	}

	public String getStatus() {
		return status;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
