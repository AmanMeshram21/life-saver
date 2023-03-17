package org.fi.lifesaver.services;

import java.util.List;

import org.fi.lifesaver.dto.HospitalDTO;


public interface HospitalServices {
	
	public String addHospital(HospitalDTO objHospital);
	public String removeHospital(int hospitalId);
	public HospitalDTO searchHospitalById(int hospitalId);
	public List<HospitalDTO> getAllHospital();
	

}
