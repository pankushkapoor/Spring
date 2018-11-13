package com.cg.mobilebilling.beans;

import java.util.List;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

@Entity
public class Customer {
	@Override
	public String toString() {
		return "customerID=" + customerID + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", emailID=" + emailID + ", dateOfBirth=" + dateOfBirth + ", billingAddress=" + billingAddress
				+ ", postpaidAccounts=" + postpaidAccounts;
	}
	@Id
	@SequenceGenerator(name="cust_seq",sequenceName="cust_seq",initialValue=10001,allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="cust_seq")
	private int customerID;
	private String firstName, lastName, emailID, dateOfBirth;
	@Embedded
	private Address billingAddress;
	@OneToMany(mappedBy="customer",fetch=FetchType.EAGER)
	private List<PostpaidAccount> postpaidAccounts;
	public Customer() {}
	
	public Customer(int customerID, String firstName, String lastName, String emailID, String dateOfBirth,
			Address billingAddress, List<PostpaidAccount> postpaidAccounts) {
		super();
		this.customerID = customerID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.emailID = emailID;
		this.dateOfBirth = dateOfBirth;
		this.billingAddress = billingAddress;
		this.postpaidAccounts = postpaidAccounts;
	}

	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmailID() {
		return emailID;
	}
	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public Address getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(Address billingAddress) {
		this.billingAddress = billingAddress;
	}
	public List<PostpaidAccount> getPostpaidAccounts() {
		return postpaidAccounts;
	}
	public void setPostpaidAccounts(List<PostpaidAccount> postpaidAccounts) {
		this.postpaidAccounts = postpaidAccounts;
	}
	public Customer(String firstName, String lastName, String emailID, String dateOfBirth, Address billingAddress) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.emailID = emailID;
		this.dateOfBirth = dateOfBirth;
		this.billingAddress = billingAddress;		
	}
	public Customer(String firstName, String lastName) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
	}
}