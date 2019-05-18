package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.claim.entity.Flier;

public interface FlierRepo extends JpaRepository<Flier, Integer> {
	
	@Query("Select c from Flier c where email =?1 and password=?2")
	Flier login(String email, String password);
	
	
}
