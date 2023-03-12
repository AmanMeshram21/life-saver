package org.fi.lifesaver.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="donorinfo")
public class Donor {
	
	@Id
	@GeneratedValue(generator="increment")
	@Column(name="donorid")
    int donorId;
	
	@Column(name="donorname")
	String donorName;
	
	@Column(name="dob")
	String dob;
	
	@Column(name="address")
	String address;
	
	@Column(name="contactno")
	long contactNo;
	
	@Column(name="email")
	String email;
	
	@Column(name="bloodgroup")
	String bloodGroup;

	public int getDonorId() {
		return donorId;
	}

	public void setDonorId(int donorId) {
		this.donorId = donorId;
	}

	public String getDonorName() {
		return donorName;
	}

	public void setDonorName(String donorName) {
		this.donorName = donorName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getContactNo() {
		return contactNo;
	}

	public void setContactNo(long contactNo) {
		this.contactNo = contactNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	
	
}
