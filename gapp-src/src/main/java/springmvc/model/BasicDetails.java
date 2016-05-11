package springmvc.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "basicdetails")

public class BasicDetails implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	
	private long id;

	private int cin;

	private String citizenship;

	private Date dob;

	private String email;

		private String firstname;

	private String gender;

	private String lastname;

	
	private Integer phonenumber;

	public int getCin() {
		return cin;
	}

	public String getCitizenship() {
		return citizenship;
	}

	public Date getDob() {
		return dob;
	}

	public String getEmail() {
		return email;
	}

	public String getFirstname() {
		return firstname;
	}

	public String getGender() {
		return gender;
	}

	public long getId() {
		return id;
	}

	public String getLastname() {
		return lastname;
	}

	public void setCin(int cin) {
		this.cin = cin;
	}

	public void setCitizenship(String citizenship) {
		this.citizenship = citizenship;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

//	public Set<Integer> getPhonenumber() {
//		return phonenumber;
//	}
//
//	public void setPhonenumber(Set<Integer> phonenumber) {
//		this.phonenumber = phonenumber;
//	}

}
