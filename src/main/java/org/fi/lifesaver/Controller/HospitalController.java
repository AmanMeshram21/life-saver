package org.fi.lifesaver.Controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.fi.lifesaver.dto.HospitalDTO;
import org.fi.lifesaver.entity.Hospital;
import org.fi.lifesaver.repositories.HospitalRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("hospital")
public class HospitalController {

	@Autowired
	HospitalRepository repositoryHospital;
	
	@PostMapping("/newHospital")
	public Serializable addNew(@RequestBody HospitalDTO objHospital) {
		
		Hospital entityHospital = new Hospital();
		BeanUtils.copyProperties(objHospital, entityHospital);
		
		return repositoryHospital.save(entityHospital).getHospitalId();
	}
	
	@GetMapping("/get/{hid}")
	public HospitalDTO getHospital(@PathVariable("hid")int hospitalId) {
		Optional<Hospital> optHospital = repositoryHospital.findById(hospitalId);
		if(optHospital.isPresent()) {
			Hospital entiyHospital = optHospital.get();
			HospitalDTO dto = new HospitalDTO();
			BeanUtils.copyProperties(entiyHospital, dto);
			return dto;
		}
		return null;
	}
	
	@GetMapping("/getAll")
	public List<HospitalDTO> getHospital(){
		Iterator<Hospital> iter = repositoryHospital.findAll().iterator();
		ArrayList<HospitalDTO> list = new ArrayList<>();
		while(iter.hasNext()) {
			Hospital entityHospital = iter.next();
			HospitalDTO dto = new HospitalDTO();
			BeanUtils.copyProperties(entityHospital, dto);
			list.add(dto);
		}
		return list;
	}
}
