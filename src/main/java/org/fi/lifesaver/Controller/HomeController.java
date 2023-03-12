package org.fi.lifesaver.Controller;

import org.fi.lifesaver.entity.Donor;
import org.fi.lifesaver.services.AdminService;
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
	
	 @GetMapping("/")
	    public String index(){
	        return "index.html";
	    }
	 
	  @GetMapping("/login")
	    public String login(Model data) {
	    	data.addAttribute("objUser",new Donor());
	    	return "login.html";
	    }
	  
	  @PostMapping("/authenticate")
	  public String authenticate(Model data,@RequestParam("userId") int userId, @RequestParam("password") String password) {
		  
		  if(adminService.adminLogin(userId,password))
	    	{
	    		data.addAttribute("userAdmin",userId);
	    		return "adminHomepage.jsp";
	    	}
	    	else
	    	{
	    		return "registerBuffer.jsp";
	    	}
	  }
}
