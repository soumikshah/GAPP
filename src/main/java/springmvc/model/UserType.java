package springmvc.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "usertypes")
public class UserType implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Id
	@GeneratedValue
	private long id;
	
	@ManyToMany
	private Set<Department> department;
	
	@OneToMany
	private Set<User> users;
	
	@OneToMany
	private Set<Application> application;
	
	@ManyToMany
	private Set<Programs> programs;
	
	@OneToMany
	private Set<EduBackGround> degree;
	
	
	
	public Set<EduBackGround> getDegree() {
		return degree;
	}

	public void setDegree(Set<EduBackGround> degree) {
		this.degree = degree;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public Set<Application> getApplication() {
		return application;
	}

	public void setApplication(Set<Application> application) {
		this.application = application;
	}

	public Set<Programs> getPrograms() {
		return programs;
	}

	public void setPrograms(Set<Programs> programs) {
		this.programs = programs;
	}

	private String role;
	
	private String roletype;

	public Set<Department> getDepartment() {
		return department;
	}

	public long getId() {
		return id;
	}

	public String getRole() {
		return role;
	}

	public String getRoletype() {
		return roletype;
	}

	public String getType() {
		return roletype;
	}

	public void setDepartment(Set<Department> department) {
		this.department = department;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public void setRoletype(String roletype) {
		this.roletype = roletype;
	}

	public void setType(String type) {
		this.roletype = type;
	}

}
