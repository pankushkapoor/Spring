package com.cg.mobilebilling.daoservices;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cg.mobilebilling.beans.Plan;

public interface PlanDAO extends JpaRepository<Plan, Integer> {
	
	
}
