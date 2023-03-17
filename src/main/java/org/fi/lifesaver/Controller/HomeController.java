package org.fi.lifesaver.Controller;

import org.fi.lifesaver.dto.AdminDTO;
import org.fi.lifesaver.dto.DonorDTO;
import org.fi.lifesaver.entity.Donor;
import org.fi.lifesaver.entity.Hospital;
import org.fi.lifesaver.services.AdminService;
import org.fi.lifesaver.services.DonorService;
import org.fi.lifesaver.services.HospitalServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	AdminService adminService;
	
	@Autowired
	HospitalServices hospitalService;
	
	
	@Autowired
	DonorService donorServices;
	
	 @GetMapping("/")
	    public String index(){
	        return "index.jsp";
	    }
	 
	  @GetMapping("/login")
	    public String login(Model data) {
	    	data.addAttribute("objUser",new Donor());
	    	return "login.jsp";
	    }
	  
	  @GetMapping("/donor")
	    public String donor(Model data) {
	    	data.addAttribute("objUser",new Donor());
	    	return "donor.jsp";
	    }
	  
	  @GetMapping("/about")
	    public String about() {
	    	return "about.jsp";
	    }
	  
	  
	  @GetMapping("/hospital")
	    public String hospital(Model data) {
	    	data.addAttribute("objUser",new Hospital());
	    	return "hospital.jsp";
	    }
	  
	  @GetMapping("/news")
	    public String news() {
	    	return "news.jsp";
	    }

	    
	    @GetMapping("/donorform")
	    public String registerDonor() {
	    	return "donorform.jsp";
	    }
	    
	    @GetMapping("/hospitalform")
	    public String registerHospital() {
	    	return "hospitalform.jsp";
	    }
	    
	    @PostMapping("/authenticate")
	    public String authenticate(Model data,@RequestParam ("userId") int userId , @RequestParam("password") String password) {
	    	
	    	if(donorServices.donorLogin(userId,password)) 
	    	{
	    		data.addAttribute("userId",userId);
	    	 DonorDTO objDonor = donorServices.getDonorById(userId);
	    	 data.addAttribute("showDonor",objDonor);
	    		return "showDonor.jsp";
	    	}
	    	else if(adminService.adminLogin(userId,password))
	    	{
	    		data.addAttribute("userId",userId);
	    		return "adminHomepage.jsp";
	    	}
	    	else
	    	{
	    		return "registerBuffer.jsp";
	    	}
	    }
	    
	    @PostMapping("/signIn")
	    public String signIn(@RequestParam("email")String email,@RequestParam("password")String password)
	    {
	    	if(adminService.adminLoginByEmailId(email, password)) {
	    		return "homepage";
	    	}
	    	return "login.jsp";
	    }
	    
	    @PostMapping("/saveAdmin")
	    public String saveAdmin(@RequestParam("firstName") String adminName,@RequestParam("lastName") String lastName,@RequestParam("username") String username,@RequestParam("email") String emailId,@RequestParam("password") String password) {
	    	try {
	    		AdminDTO objAdmin = new AdminDTO();
	    		objAdmin.setFirstName(adminName);
	    		objAdmin.setLastName(lastName);
	    		objAdmin.setUserName(username);
	    		objAdmin.setEmail(emailId);
	    		objAdmin.setPassword(password);
	        	adminService.addAdmin(objAdmin);
	        	return "index.jsp";
	    	}
	    	catch(Exception e) {
	    		return "index.jsp";
	    	}
	    }
	    
}
