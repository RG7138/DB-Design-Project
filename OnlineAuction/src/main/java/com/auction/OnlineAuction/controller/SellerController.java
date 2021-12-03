package com.auction.OnlineAuction.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.AdminDao;
import com.auction.OnlineAuction.dao.AuctionDao;
import com.auction.OnlineAuction.dao.CategoryDao;
import com.auction.OnlineAuction.dao.ProductDao;
import com.auction.OnlineAuction.dao.SellerDao;
import com.auction.OnlineAuction.dao.SubCategoryDao;
import com.auction.OnlineAuction.dao.UserDao;
import com.auction.OnlineAuction.model.Auction;
import com.auction.OnlineAuction.model.Category;
import com.auction.OnlineAuction.model.Product;
import com.auction.OnlineAuction.model.Seller;
import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/seller")
public class SellerController {

	@Autowired
	SellerDao sellerDao;
	
	@Autowired
	AdminDao adminDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	SubCategoryDao subCategoryDao;
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	AuctionDao auctionDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllSellers() {
		
		ModelAndView model = new ModelAndView("viewSeller");
		model.addObject("sellers", sellerDao.getSellerDetails());
		return model;
		
	}
	
	@GetMapping(value = "/sign-up")
	public ModelAndView sellerSignup() {
		
		
		return new ModelAndView("signupSeller", "seller", new Seller());
		
	}
	
	@PostMapping(value = "/save")
	public ModelAndView saveSeller(@ModelAttribute("seller") Seller seller) {
		
		seller.getUser().setRole("seller");
		seller.getUser().setAdmin(adminDao.getAdminDetails().get(0));
		User user = userDao.addUser(seller.getUser());
		seller.getUser().setUserId(user.getUserId());
		sellerDao.addSeller(seller);
		return new ModelAndView("login", "user",user);
		
	}
	
	@GetMapping(value = "/sell")
	public ModelAndView sell(Model model) {
		
		List<Category> categoryList = categoryDao.getCategoryDetails();
		model.addAttribute("categoryList",categoryList);
		model.addAttribute("product", new Product());
		return new ModelAndView("sell");
		
	}

	@PostMapping(value = "/addProduct")
	public ModelAndView addProductForAuction(@ModelAttribute("product") Product product, @RequestParam("bidstartdate") String bidStartDate, 
			@RequestParam("file") MultipartFile file, HttpSession session, Model model, @RequestParam("category") int categoryId,
			@RequestParam("subcategory") int subCategoryId) throws Exception, IOException {
		
		
		//Add file to a certain path
		String path = "E:\\UTD\\Database Design\\Project\\Phase 4\\DB-Design-Project\\OnlineAuction\\src\\main\\resources\\static\\images\\product";
		//String path = session.getServletContext().getRealPath("/product");

        String fileName = "\\" + product.getProductName() + ".jpg";
        try {
            byte[] b = file.getBytes();
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(path + fileName));
            bufferedOutputStream.write(b);
            
            bufferedOutputStream.flush();
            bufferedOutputStream.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
        
        product.setImagePath(path + fileName);
        product.setAdmin(adminDao.getAdminDetails().get(0));
        product.setSubCategory(subCategoryDao.getSubCategoryById(subCategoryId));
        product.getSubCategory().setCategory(categoryDao.getCategoryById(categoryId));
		Product addedProduct = productDao.saveProduct(product);
        Auction auction = new Auction();
        
        //Set bidStart date to current date and bid expiry date to 2 days after the bid start date
        long millis=System.currentTimeMillis();  
        Date date = new Date(millis);
        Calendar c = Calendar.getInstance();   
        c.setTime(date);
        c.add(Calendar.DAY_OF_MONTH, 2);  
        java.util.Date d = c.getTime();
        Date newDate = new Date(d.getTime());
        auction.setAuctionDate(date);
        auction.setExpirationDate(newDate);
        
        //Set other auction variables
        auction.setProduct(addedProduct);
        User user = (User) session.getAttribute("user");
        auction.setSeller(sellerDao.getSellerByUserId(user.getUserId()));

        auctionDao.saveAuction(auction);
        
        Seller seller= sellerDao.getSellerByUserId(user.getUserId());
		List<Auction> auctions = auctionDao.getAuctionDetailsBySellerId(seller.getSellerId());
		model.addAttribute("auctions", auctions);
        
		return new ModelAndView("myAuctions");
	}
}
