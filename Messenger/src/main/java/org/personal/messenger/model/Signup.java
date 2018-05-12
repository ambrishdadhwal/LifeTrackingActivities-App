package org.personal.messenger.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Signup {
	private String userName;
	private String passWord;
	private String passWord1;

	public String getPassWord1() {
		return passWord1;
	}

	public void setPassWord1(String passWord1) {
		this.passWord1 = passWord1;
	}

	public Signup() {
		System.out.println("new user constructor");
	}

	public Signup(String userName, String passWord, String passWord1) {
		this.userName = userName;
		this.passWord = passWord;
		this.passWord1 = passWord1;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
}
