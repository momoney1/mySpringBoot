package com.diakite.mySpringBoot;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity //Pojo class that will represent a table in the h2 database.  
public class Customers {
	
		@Id
	private int cid; //this property marked with "Id" annotation represents primary key of Customers table in database.  
	private String fname;
	private String sname;
	private String email;
	
	
	/**
	 * Get method for customer id
	 * 
	 * @return cid
	 */
	public int getCid() {
		return cid;
	}
	/**
	 * Set method for customer id
	 * @param cid
	 * @return 
	 */
	public void setCid(int cid) {
		this.cid = cid;
	}
	/**
	 * Get method for customer name
	 * 
	 * @return fname
	 */	
	public String getFname() {
			return fname;
	}
	/**
	 * Set method for customer first name
	 * @param fname
	 * @return 
	 */
	public void setFname(String fname) {
		this.fname = fname;
	}
	/**
	 * Get method for customer last name
	 * 
	 * @return sname
	 */
	public String getSname() {
		return sname;
	}
	/**
	 * Set method for customer last ame
	 * @param sname
	 * @return 
	 */
	public void setSname(String sname) {
		this.sname = sname;
	}
	/**
	 * Get method for customer email address
	 * 
	 * @return email
	 */
	public String getEmail() {
			return email;
		}
	/**
	 * Set method for customer email
	 * @param email
	 * @return 
	 */
	public void setEmail(String email) {
			this.email = email;
	}

	@Override
	public String toString() {
		return "Customers [cid=" + cid + ", fname=" + fname + ", sname=" + sname + ", email=" + email + "]";
	}
	
	
	

}
