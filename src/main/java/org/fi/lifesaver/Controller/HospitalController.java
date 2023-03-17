package org.fi.lifesaver.Controller;

import org.fi.lifesaver.dto.HospitalDTO;
import org.fi.lifesaver.services.HospitalServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hospital")
public class HospitalController {

	@Autowired
	HospitalServices hospitalServices;
	
	@GetMapping("/showHospital")
    public String registerHospital() {
    	return "showHospital.jsp";
    }
	
	 @PostMapping("/hospitalform")
	    public String hospitalform(@RequestParam("Name") String hospitalName,@RequestParam("email") String emailId, @RequestParam("hospitaladdress") String hospitaladdress, @RequestParam("district") String district , @RequestParam("state") String state ,@RequestParam("contactNo") long contactNo ) {
	    	try {
	    		HospitalDTO objHospital = new HospitalDTO();
	    		objHospital.setHospitalName(hospitalName);
	    		objHospital.setAddress(hospitaladdress);
	    		objHospital.setEmail(emailId);
	    		objHospital.setContactNo(contactNo);
	    		objHospital.setDistrict(district);
	    		objHospital.setState(state);
	        	hospitalServices.addHospital(objHospital);
	        	return "showHospital.jsp";
	    	}
	    	catch(Exception e) {
	    		return "hospitalform.jsp";
	    	}
	    }
	
}
