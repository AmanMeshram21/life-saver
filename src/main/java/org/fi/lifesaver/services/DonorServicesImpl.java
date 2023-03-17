package org.fi.lifesaver.services;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.fi.lifesaver.dto.DonorDTO;
import org.fi.lifesaver.entity.Donor;
import org.fi.lifesaver.repositories.DonorRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service; 

@Service
public class DonorServicesImpl implements DonorService {

	@Autowired
	DonorRepository repositoryDonor;
	
	@Override
	public String addDonor(DonorDTO objDonor) {
		Donor donorEntity = new Donor();
        BeanUtils.copyProperties(objDonor,donorEntity);
        repositoryDonor.save(donorEntity);
        return "Success";
	}

	@Override
	public String removeDonorById(int donorId) {
		 repositoryDonor.deleteById(donorId);
	        return "Deleted";
	}

	@Override
	public DonorDTO getDonorById(int donorId) {
		Optional<Donor> optDonor = repositoryDonor.findById(donorId);
        if(optDonor.isPresent())
        {
        	Donor entityDonor = optDonor.get();
            DonorDTO dtoDonor = new DonorDTO();
            BeanUtils.copyProperties(entityDonor,dtoDonor);
            return dtoDonor;
        }
		return null;
	}

	@Override
	public List<DonorDTO> getAllDonor() {
		 Iterator<Donor> iter = repositoryDonor.findAll().iterator();
	        ArrayList<DonorDTO> list = new ArrayList<>();
	        while(iter.hasNext())
	        {
	            Donor donorEntity = iter.next();
	            DonorDTO dtoDonor = new DonorDTO();
	            BeanUtils.copyProperties(donorEntity,dtoDonor);
	            list.add(dtoDonor);
	        }
	        return list;
	}

	@Override
	public boolean donorLogin(int donorId, String password) {
		 Optional<Donor> optionalDonor= repositoryDonor.findById(donorId);
	        if (optionalDonor.isPresent())
	        {
	            Donor objDonor = optionalDonor.get();
	            if (objDonor.getPassword().equals(password))
	            {
	                return true;
	            }
	        }
		return false;
	}

}
