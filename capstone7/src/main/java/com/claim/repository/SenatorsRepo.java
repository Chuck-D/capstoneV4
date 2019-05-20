package com.claim.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.claim.entity.Senators;

public interface SenatorsRepo extends JpaRepository<Senators, String> {
	@Query("Select c.name from Senators c where c.senatorID=?1")
	String senatorNameByID(int senatorID);
	
	/*
	 * @Query("Select c from Senators c where c.senatorID=1") List<Senators>
	 * senatorByID(int senatorID);
	 */
	
	
	/*
	 * @Query("Select c.name from Senators c where c.senatorID = ?1") String
	 * senatorName(int senatorID);
	 */
	
	/*
	 * @Query("Select c from Senators c where c.senatorID = ?1") int senator1(int
	 * senator1);
	 * 
	 * @Query("Select c from Senators c where c.senatorID = ?1") int senator2(int
	 * senator2);
	 */
	 
	
}
