package springmvc.model;

import java.io.File;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="score")
public class Scores implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private long id;
	
	private int toefl_scores;
	
	private int gre;
	
	private int gpa;
	
	private File transcripts;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getToefl_scores() {
		return toefl_scores;
	}

	public void setToefl_scores(int toefl_scores) {
		this.toefl_scores = toefl_scores;
	}

	public int getGre() {
		return gre;
	}

	public void setGre(int gre) {
		this.gre = gre;
	}

	public int getGpa() {
		return gpa;
	}

	public void setGpa(int gpa) {
		this.gpa = gpa;
	}

	public File getTranscripts() {
		return transcripts;
	}

	public void setTranscripts(File transcripts) {
		this.transcripts = transcripts;
	}
}
