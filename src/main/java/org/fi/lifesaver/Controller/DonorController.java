package org.fi.lifesaver.Controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.fi.lifesaver.dto.DonorDTO;
import org.fi.lifesaver.entity.Donor;
import org.fi.lifesaver.repositories.DonorRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("donor-form")
public class DonorController {

	@Autowired
	DonorRepository repositoryDonor;
	
	@PostMapping("/newDonor")
	public Serializable addNew(@RequestBody DonorDTO objDonor) {
		
		Donor entityDonor = new Donor();
		BeanUtils.copyProperties(objDonor, entityDonor);
		
		return repositoryDonor.save(entityDonor).getDonorId();
	}
	
	@GetMapping("/get/{did}")
	public DonorDTO getDonor(@PathVariable("cid")int donorId) {
		Optional<Donor> optDonor = repositoryDonor.findById(donorId);
		if(optDonor.isPresent()) {
			Donor entiyDonor = optDonor.get();
			DonorDTO dto = new DonorDTO();
			BeanUtils.copyProperties(entiyDonor, dto);
			return dto;
		}
		return null;
	}
	
	@GetMapping("/getAll")
	public List<DonorDTO> getDonor(){
		Iterator<Donor> iter = repositoryDonor.findAll().iterator();
		ArrayList<DonorDTO> list = new ArrayList<>();
		while(iter.hasNext()) {
			Donor entityDonor = iter.next();
			DonorDTO dto = new DonorDTO();
			BeanUtils.copyProperties(entityDonor, dto);
			list.add(dto);
		}
		return list;
	}
}
