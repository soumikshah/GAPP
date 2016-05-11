package springmvc.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "education_background")
public class EduBackGround implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private long id;

	

	private String degreesReceived;

	private String Major;

	private String NameOfCollege;

	private Date TimeAttendedFrom;
	
	private Date TimeAttendedTill;

	public Date getTimeAttendedFrom() {
		return TimeAttendedFrom;
	}

	public void setTimeAttendedFrom(Date timeAttendedFrom) {
		TimeAttendedFrom = timeAttendedFrom;
	}

	public Date getTimeAttendedTill() {
		return TimeAttendedTill;
	}

	public void setTimeAttendedTill(Date timeAttendedTill) {
		TimeAttendedTill = timeAttendedTill;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getDegreesReceived() {
		return degreesReceived;
	}

	public void setDegreesReceived(String degreesReceived) {
		this.degreesReceived = degreesReceived;
	}

	public String getMajor() {
		return Major;
	}

	public void setMajor(String major) {
		Major = major;
	}

	public String getNameOfCollege() {
		return NameOfCollege;
	}

	public void setNameOfCollege(String nameOfCollege) {
		NameOfCollege = nameOfCollege;
	}

	
}
