package com.auction.OnlineAuction.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{

	@Query("Select u from User u where u.email= :email and u.password = :password")
	public User getUserByEmailAndPassword(@Param("email") String email, @Param("password") String password);
}
