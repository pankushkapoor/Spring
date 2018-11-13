package com.cg.mobilebilling.beans;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

@Entity
public class PostpaidAccount {
	@Id
	@SequenceGenerator(name="mobileNo_seq",sequenceName="mobileNo_seq",initialValue=98156675,allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="mobileNo_seq")
	private long mobileNo;
	@OneToOne
	private Plan plan;
	@OneToMany(mappedBy="postpaidAccount",fetch=FetchType.EAGER)
	private  List<Bill> bills;
	@ManyToOne
	private Customer customer;
	public PostpaidAccount() {}
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	public long getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}
	public Plan getPlan() {
		return plan;
	}
	public void setPlan(Plan plan) {
		this.plan = plan;
	}
	public List<Bill> getBills() {
		return bills;
	}
	public void setBills(List<Bill> bills) {
		this.bills = bills;
	}
	public PostpaidAccount(Plan plan) {
		super();
		this.plan = plan;
	}

	@Override
	public String toString() {
		return "PostpaidAccount [mobileNo=" + mobileNo + ", plan=" + plan + ", bills=" + bills + ", customer="
				+ customer + "]";
	}
	
}