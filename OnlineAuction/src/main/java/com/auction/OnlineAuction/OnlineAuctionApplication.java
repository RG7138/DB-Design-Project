package com.auction.OnlineAuction;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
public class OnlineAuctionApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineAuctionApplication.class, args);
	}

}
