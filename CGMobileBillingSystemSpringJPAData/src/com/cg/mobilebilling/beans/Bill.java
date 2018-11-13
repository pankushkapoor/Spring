package com.cg.mobilebilling.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

@Entity
public class Bill {
	@Id
	@SequenceGenerator(name="bill_seq",sequenceName="bill_seq",initialValue=101,allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="bill_seq")
	private int billID;
	private int noOfLocalSMS, noOfStdSMS, noOfLocalCalls, noOfStdCalls, internetDataUsageUnits;
	private String billMonth;
	@ManyToOne
	private PostpaidAccount postpaidAccount;
	private float totalBillAmount, localSMSAmount, stdSMSAmount, localCallAmount, stdCallAmount, internetDataUsageAmount, servicesTax, vat;
	public Bill() {
		super();
	}
	
	public int getBillID() {
		return billID;
	}
	public void setBillID(int billID) {
		this.billID = billID;
	}
	public int getNoOfLocalSMS() {
		return noOfLocalSMS;
	}
	public void setNoOfLocalSMS(int noOfLocalSMS) {
		this.noOfLocalSMS = noOfLocalSMS;
	}
	public int getNoOfStdSMS() {
		return noOfStdSMS;
	}
	public void setNoOfStdSMS(int noOfStdSMS) {
		this.noOfStdSMS = noOfStdSMS;
	}
	public int getNoOfLocalCalls() {
		return noOfLocalCalls;
	}
	public void setNoOfLocalCalls(int noOfLocalCalls) {
		this.noOfLocalCalls = noOfLocalCalls;
	}
	public int getNoOfStdCalls() {
		return noOfStdCalls;
	}
	public void setNoOfStdCalls(int noOfStdCalls) {
		this.noOfStdCalls = noOfStdCalls;
	}
	public int getInternetDataUsageUnits() {
		return internetDataUsageUnits;
	}
	public void setInternetDataUsageUnits(int internetDataUsageUnits) {
		this.internetDataUsageUnits = internetDataUsageUnits;
	}
	public String getBillMonth() {
		return billMonth;
	}
	public void setBillMonth(String billMonth) {
		this.billMonth = billMonth;
	}
	public float getTotalBillAmount() {
		return totalBillAmount;
	}
	public void setTotalBillAmount(float totalBillAmount) {
		this.totalBillAmount = totalBillAmount;
	}
	public float getLocalSMSAmount() {
		return localSMSAmount;
	}
	public void setLocalSMSAmount(float localSMSAmount) {
		this.localSMSAmount = localSMSAmount;
	}
	public float getStdSMSAmount() {
		return stdSMSAmount;
	}
	public void setStdSMSAmount(float stdSMSAmount) {
		this.stdSMSAmount = stdSMSAmount;
	}
	public float getLocalCallAmount() {
		return localCallAmount;
	}
	public void setLocalCallAmount(float localCallAmount) {
		this.localCallAmount = localCallAmount;
	}
	public float getStdCallAmount() {
		return stdCallAmount;
	}
	public void setStdCallAmount(float stdCallAmount) {
		this.stdCallAmount = stdCallAmount;
	}
	public float getInternetDataUsageAmount() {
		return internetDataUsageAmount;
	}
	public void setInternetDataUsageAmount(float internetDataUsageAmount) {
		this.internetDataUsageAmount = internetDataUsageAmount;
	}
	public float getServicesTax() {
		return servicesTax;
	}
	public void setServicesTax(float servicesTax) {
		this.servicesTax = servicesTax;
	}
	public float getVat() {
		return vat;
	}
	public void setVat(float vat) {
		this.vat = vat;
	}

	@Override
	public String toString() {
		return "Bill [billID=" + billID + ", noOfLocalSMS=" + noOfLocalSMS + ", noOfStdSMS=" + noOfStdSMS
				+ ", noOfLocalCalls=" + noOfLocalCalls + ", noOfStdCalls=" + noOfStdCalls + ", internetDataUsageUnits="
				+ internetDataUsageUnits + ", billMonth=" + billMonth + ", postpaidAccount=" + postpaidAccount
				+ ", totalBillAmount=" + totalBillAmount + ", localSMSAmount=" + localSMSAmount + ", stdSMSAmount="
				+ stdSMSAmount + ", localCallAmount=" + localCallAmount + ", stdCallAmount=" + stdCallAmount
				+ ", internetDataUsageAmount=" + internetDataUsageAmount + ", servicesTax=" + servicesTax + ", vat="
				+ vat + "]";
	}

	public PostpaidAccount getPostpaidAccount() {
		return postpaidAccount;
	}

	public void setPostpaidAccount(PostpaidAccount postpaidAccount) {
		this.postpaidAccount = postpaidAccount;
	}
}