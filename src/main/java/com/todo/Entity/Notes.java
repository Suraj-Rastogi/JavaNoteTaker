package com.todo.Entity;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="notes")
public class Notes {
	@Id
	private long id;
	@Column(name="note_title")
	private String title;
	
	@Column(name="note_content",length=65555)
	private String content;
	 
	@Column(name="created_date")
	@Temporal(TemporalType.DATE)
	private Date addedDate;//date format-- yyyy-mm-dd
	public Notes() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notes(long id, String title, String content, Date addedDate) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	@Override
	public String toString() {
		return "Notes [id=" + id + ", title=" + title + ", content=" + content + ", addedDate=" + addedDate + "]";
	}

}
