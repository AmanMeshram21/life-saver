package org.fi.lifesaver.services;

import java.util.Optional;

import org.fi.lifesaver.dto.AdminDTO;
import org.fi.lifesaver.entity.Admin;
import org.fi.lifesaver.repositories.AdminRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminRepository repositoryAdmin;
	
	@Override
	public boolean adminLogin(int adminId, String password) {
		Optional<Admin> optionalAdmin = repositoryAdmin.findById(adminId);
		if (optionalAdmin.isPresent())
        {
            Admin objAdmin = optionalAdmin.get();
            if (objAdmin.getPassword().equals(password))
            {
                return true;
            }
        }
		return false;
	}

	@Override
	public AdminDTO getAdminById(int adminId) {
		Optional<Admin> optAdmin = repositoryAdmin.findById(adminId);
        if(optAdmin.isPresent())
        {
        	AdminDTO dtoAdmin = new AdminDTO();
            BeanUtils.copyProperties(optAdmin,dtoAdmin);
            return dtoAdmin;
        }
		return null;
	}

}
