package org.fi.lifesaver.Controller;

import java.util.List;

import org.fi.lifesaver.dto.HospitalDTO;
import org.fi.lifesaver.services.AdminService;
import org.fi.lifesaver.services.HospitalServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	AdminService adminServices;
	
	@Autowired
	HospitalServices hospitalServices;
	
	@GetMapping("/addHospital")
	public String addHospital() {
		return "addHospital.jsp";
	}
	
	
	@GetMapping("/showAllHospital")
    public String showAllHospital(Model data) {
    	List<HospitalDTO> list = hospitalServices.getAllHospital();
    	data.addAttribute("hospitalList", list);
    	return "allHospitalAdmin.jsp";
    }
	
	 @GetMapping("/removeHospital")
	 public String deleteHospital() {
		 return "-----------deleteHospitalForm-------------";
	 }
	 
	 @PostMapping("/deleteHospital")
	 public String removeHospital(@RequestParam("hospitalId") int hospitalId)
	 {
		 hospitalServices.removeHospital(hospitalId);
		 return "---------Whichever page u want---------------";
	 }
	 
	 @GetMapping("/getAll")
		public String getDonor(Model data){
			List<HospitalDTO> list = hospitalServices.getAllHospital();
			data.addAttribute("listOfAllHospitals", list);
			return "---------------------Insert Page Name----------------------------";
		}
	
}
