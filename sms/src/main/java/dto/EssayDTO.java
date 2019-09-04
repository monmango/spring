package dto;

import java.util.Date;

public class EssayDTO {
	private int mentor_num;
	private int essay_num;
	private String essay_subject;
	private String essay_content;
	private Date essay_date;
	private int essay_hit;
	
	public EssayDTO() {}

	public int getMentor_num() {
		return mentor_num;
	}
	
	public void setMentor_num(int mentor_num) {
		this.mentor_num = mentor_num;
	}
	
	public int getEssay_num() {
		return essay_num;
	}

	public void setEssay_num(int essay_num) {
		this.essay_num = essay_num;
	}

	public String getEssay_subject() {
		return essay_subject;
	}

	public void setEssay_subject(String essay_subject) {
		this.essay_subject = essay_subject;
	}

	public String getEssay_content() {
		return essay_content;
	}

	public void setEssay_content(String essay_content) {
		this.essay_content = essay_content;
	}

	public Date getEssay_date() {
		return essay_date;
	}

	public void setEssay_date(Date essay_date) {
		this.essay_date = essay_date;
	}

	public int getEssay_hit() {
		return essay_hit;
	}

	public void setEssay_hit(int essay_hit) {
		this.essay_hit = essay_hit;
	}
	
	
	
}// end class
