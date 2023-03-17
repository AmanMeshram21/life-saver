package org.fi.lifesaver.services;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.fi.lifesaver.dto.HospitalDTO;
import org.fi.lifesaver.entity.Hospital;
import org.fi.lifesaver.repositories.HospitalRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

@Service
public class HospitalServiceImpl implements HospitalServices {

	@Autowired
	HospitalRepository repositoryHospital;
	
	@Override
	public String addHospital(@RequestBody HospitalDTO objHospital) {
		Hospital hospitalEntity = new Hospital();
		BeanUtils.copyProperties(objHospital, hospitalEntity);
		repositoryHospital.save(hospitalEntity);
		return "Success";
	}

	@Override
	public String removeHospital(@PathVariable("hospitalId") int hospitalId) {
		repositoryHospital.deleteById(hospitalId);;
		return "Deleted";
	}

	@Override
	public HospitalDTO searchHospitalById(int hospitalId) {
		Optional<Hospital> optHospital = repositoryHospital.findById(hospitalId);
		if(optHospital.isPresent())
		{
			Hospital hospitalEntity = optHospital.get();
			HospitalDTO dtoHospital = new HospitalDTO();
			BeanUtils.copyProperties(hospitalEntity, dtoHospital);
			return dtoHospital;
		}
		return null;
	}

	@Override
	public List<HospitalDTO> getAllHospital() {
		Iterator<Hospital> iter = repositoryHospital.findAll().iterator();
		ArrayList<HospitalDTO> list = new ArrayList<>();
		while(iter.hasNext())
		{
			Hospital hospitalEntity = iter.next();
			HospitalDTO dtoHospital = new HospitalDTO();
			BeanUtils.copyProperties(hospitalEntity, dtoHospital);
			list.add(dtoHospital);
		}
		return list;
	}



}
