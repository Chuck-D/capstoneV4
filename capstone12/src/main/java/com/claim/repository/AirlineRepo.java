package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.claim.entity.Airlines;


public interface AirlineRepo extends JpaRepository<Airlines, Integer>  {

}
