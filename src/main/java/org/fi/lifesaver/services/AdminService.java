package org.fi.lifesaver.services;

import org.fi.lifesaver.dto.AdminDTO;
import org.springframework.web.bind.annotation.PathVariable;

public interface AdminService {

	public boolean adminLogin(@PathVariable("adminId")int adminId,@PathVariable("password")String password);
	public AdminDTO getAdminById(int adminId);
	public String  addAdmin(AdminDTO objAdmin);
	public boolean adminLoginByEmailId(String email, String password);
}
