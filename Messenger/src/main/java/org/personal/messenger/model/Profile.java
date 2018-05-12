package org.personal.messenger.model;

import java.util.Date;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Profile {
	private long id;
	private String fName;
	private long username;
	private long password;

	private String lName;

	private String pName;

	private Date created;

	public Profile() {
		System.out.println("in profiles consttuctor");
	}

	public Profile(long username, long password, long id, String fName, String lName, Date created, String pName) {
		this.username = username;
		this.password = password;
		this.id = id;
		this.fName = fName;
		this.lName = lName;
		this.created = created;
		this.pName = pName;
	}

	public Date getCreated() {
		return created;
	}

	public String getfName() {
		return fName;
	}

	public long getId() {
		return id;
	}

	public String getlName() {
		return lName;
	}

	public long getPassword() {
		return password;
	}

	public String getpName() {
		return pName;
	}

	public long getUsername() {
		return username;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public void setPassword(long password) {
		this.password = password;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public void setUsername(long username) {
		this.username = username;
	}

}
