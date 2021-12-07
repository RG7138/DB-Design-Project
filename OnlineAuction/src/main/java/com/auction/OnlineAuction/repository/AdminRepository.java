package com.auction.OnlineAuction.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer>{

	@Query("Select a from Admin a where a.email= :email and a.password = :password")
	public Admin getAdminByEmailAndPassword(@Param("email") String email, @Param("password") String password);
}
