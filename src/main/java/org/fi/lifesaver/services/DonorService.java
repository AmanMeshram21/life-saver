package org.fi.lifesaver.services;

import java.util.List;

import org.fi.lifesaver.dto.DonorDTO;

public interface DonorService {

	public String addDonor(DonorDTO objDonor);
	public String removeDonorById(int donorId);
	public DonorDTO getDonorById(int donorId);
	public List<DonorDTO> getAllDonor();
	public boolean donorLogin(int donorId,String password);
}
