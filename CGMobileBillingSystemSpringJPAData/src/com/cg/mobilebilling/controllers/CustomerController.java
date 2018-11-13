package com.cg.mobilebilling.controllers;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cg.mobilebilling.beans.Bill;
import com.cg.mobilebilling.beans.Customer;
import com.cg.mobilebilling.beans.Plan;
import com.cg.mobilebilling.beans.PostpaidAccount;
import com.cg.mobilebilling.daoservices.PostpaidAccountDAO;
import com.cg.mobilebilling.exceptions.BillingServicesDownException;
import com.cg.mobilebilling.exceptions.CustomerDetailsNotFoundException;
import com.cg.mobilebilling.exceptions.InvalidBillMonthException;
import com.cg.mobilebilling.exceptions.PlanDetailsNotFoundException;
import com.cg.mobilebilling.exceptions.PostpaidAccountNotFoundException;
import com.cg.mobilebilling.services.BillingServices;

@Controller
public class CustomerController {
	@Autowired 
	BillingServices service;
	Customer cust;
	PostpaidAccount account,account1;
	Bill bill2;
	int amount;
	
	@RequestMapping("/registerCustomer")
	public ModelAndView registerCustomerAction(@ModelAttribute Customer customer) throws BillingServicesDownException {		
		int customerID=	service.acceptCustomerDetails(customer.getFirstName(), customer.getLastName(), customer.getEmailID(),customer.getDateOfBirth(),customer.getBillingAddress().getCity(), customer.getBillingAddress().getState(), customer.getBillingAddress().getPinCode());
		cust = customer;
		cust.setCustomerID(customerID);
		return new ModelAndView("registrationSuccessPage", "customer", customer);
	}
	
	@RequestMapping("/loginCustomer")
	public ModelAndView loginCustomerAction(@RequestParam("mobileNo") long mobileNo,HttpServletRequest request) throws BillingServicesDownException, CustomerDetailsNotFoundException, PostpaidAccountNotFoundException {
		account1 = service.getPostPaidAccountDetails(0, mobileNo);
		request.getSession().setAttribute("account", account1);
		return new ModelAndView("loginSuccessPage");
	}
	
	@RequestMapping("/registerPlan")
	public ModelAndView registerPlanAction(@ModelAttribute Plan plan,HttpServletRequest request) throws BillingServicesDownException, PlanDetailsNotFoundException, CustomerDetailsNotFoundException, PostpaidAccountNotFoundException {
		
		if(((PostpaidAccount) request.getSession().getAttribute("account"))!=null) {
			service.changePlan(0, ((PostpaidAccount) request.getSession().getAttribute("account")).getMobileNo(), plan.getPlanID());
			return new ModelAndView("planRegistrationSuccessPage");
		}else {
		long mobileNo = service.openPostpaidMobileAccount(cust.getCustomerID(), plan.getPlanID());
		account = service.getPostPaidAccountDetails(cust.getCustomerID(), mobileNo);
		System.out.println(account);
		return new ModelAndView("planRegistrationSuccessPage", "account", service.getPostPaidAccountDetails(cust.getCustomerID(), mobileNo));
		}
	}
	
	@RequestMapping("/generate")
	public ModelAndView generateBillAction(@ModelAttribute Bill bill) throws  InvalidBillMonthException, CustomerDetailsNotFoundException, PostpaidAccountNotFoundException, BillingServicesDownException, PlanDetailsNotFoundException {
		//long mobileNo = service.openPostpaidMobileAccount(cust.getCustomerID(), plan.getPlanID());
		bill2 = service.generateMonthlyMobileBill(cust.getCustomerID(), account.getMobileNo(), bill.getBillMonth(), bill.getNoOfLocalSMS(), bill.getNoOfStdSMS(), bill.getNoOfLocalCalls(), bill.getNoOfStdCalls(), bill.getInternetDataUsageUnits());
		//bill.setTotalBillAmount(amount);
		bill2.setPostpaidAccount(service.getPostPaidAccountDetails(cust.getCustomerID(), account.getMobileNo()));
		System.out.println(bill2);
		return new ModelAndView("billGenerated", "bill", bill2);			
	}
	
}
