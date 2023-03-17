package org.fi.lifesaver.Controller;

import org.fi.lifesaver.dto.DonorDTO;
import org.fi.lifesaver.services.DonorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/donor")
public class DonorController {

	
	@Autowired
	DonorService donorService;
	
	
	 @PostMapping("/savedonor")
	    public ModelAndView donorform(Model data, @RequestParam("donorId") int donorId ,@RequestParam("Name") String Name,@RequestParam("fatherName") String fatherName,@RequestParam("lastName") String lastName,@RequestParam("DOB") int age,@RequestParam("email") String emailId,@RequestParam("password") String password, @RequestParam("address") String address, @RequestParam("district") String district , @RequestParam("state") String state ,@RequestParam("contactNo") long contactNo ,@RequestParam("bloodGroup") String bloodGroup ) {
	    	try {
	    		DonorDTO objDonor = new DonorDTO();
	    		objDonor.setDonorId(donorId);
	    		objDonor.setDonorName(Name);
	    		objDonor.setFatherName(fatherName);
	    		objDonor.setLastName(lastName);
	    		objDonor.setAge(age);
	    		objDonor.setEmail(emailId);
	    		objDonor.setPassword(password);
	    		objDonor.setAddress(address);
	    		objDonor.setBloodGroup(bloodGroup);
	    		objDonor.setContactNo(contactNo);
	    		objDonor.setDistrict(district);
	    		objDonor.setState(state);
	        	donorService.addDonor(objDonor);
	        DonorDTO objDonorId =	donorService.getDonorById(donorId);
	        data.addAttribute("donorId", donorId);
	        return new ModelAndView("showDonor.jsp","showDonor",objDonorId);

	    	}
	    	catch(Exception e) {
	    		return new ModelAndView("donorform.jsp","test",null);
	    	}
	    }

	
}
