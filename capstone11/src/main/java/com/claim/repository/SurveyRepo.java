package com.claim.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.claim.entity.Survey;

public interface SurveyRepo extends JpaRepository<Survey, String> {
	
	@Query("Select c from Survey c where c.airlines = ?1")
	List<Survey> airlineByName(String airline);
	
	/*
	 * @Query("Select round(sum(c.comfort)/count(airlines),2) from Survey c where c.airlines = ?1"
	 * ) double avgOfComfortRatingsRounded(String airline);
	 * 
	 * @Query("Select sum(c.comfort)/count(airlines) from Survey c where c.airlines = ?1"
	 * ) int avgOfComfortRatings(String airline);
	 */
	@Query("Select sum(c.comfort) from Survey c where c.airlines = ?1")
	int sumOfComfortRatings(String airline);
	
	@Query("Select sum(c.legroom) from Survey c where c.airlines = ?1")
	int sumOfLegroomRatings(String airline);
	
	/*
	 * @Query("Select sum(c.comfort) + sum(c.legroom) from Survey c where c.airlines = ?1"
	 * ) int sumOfRatings1(String airline);
	 */
	
	@Query("Select sum(c.comfort)/count(airlines) + sum(c.legroom)/count(airlines) from Survey c where c.airlines = ?1 ")
	int sumOfRatings(String airline);
	
	
	@Query("Select sum(c.comfort)/count(airlines) + sum(c.legroom)/count(airlines) from Survey c where c.airlines = ?1 AND c.height Like '%above%'")
	int sumOfRatings2(String airline);
	
	
	
	
	
	
	
	
	
}