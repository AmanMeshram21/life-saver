package org.fi.lifesaver.services;

import java.util.Optional;
import org.hibernate.query.Query;
import org.fi.lifesaver.dto.AdminDTO;
import org.fi.lifesaver.entity.Admin;
import org.fi.lifesaver.repositories.AdminRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminRepository repositoryAdmin;
	
	@Autowired
	SessionFactory sessionFactory;
	
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
	public boolean adminLoginByEmailId(String email, String password) {
		try(Session session = sessionFactory.openSession()){
			Query query = session.getNamedQuery("loginAdmin");
			query.setParameter(1,email);
			query.setParameter(2,password);
			query.getFirstResult();
			return true;
		}
		catch (Exception e) {
			return false;
		}
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

	@Override
	public String addAdmin(AdminDTO objAdmin) {
		Admin entityAdmin = new Admin();
		BeanUtils.copyProperties(objAdmin, entityAdmin);
		repositoryAdmin.save(entityAdmin);
		return "Admin Added";
	}

}
