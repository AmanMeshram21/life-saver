package org.fi.lifesaver.Controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.fi.lifesaver.dto.BankDTO;
import org.fi.lifesaver.entity.Bank;
import org.fi.lifesaver.repositories.BankRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("bank")
public class BankController {

	@Autowired
	BankRepository repositoryBank;
	
	@PostMapping("/newBank")
	public Serializable addNew(@RequestBody BankDTO objBank) {
		
		Bank entityBank = new Bank();
		BeanUtils.copyProperties(objBank, entityBank);
		
		return repositoryBank.save(entityBank).getBankId();
	}
	
	@GetMapping("/get/{baid}")
	public BankDTO getBank(@PathVariable("baid")int bankId) {
		Optional<Bank> optBank = repositoryBank.findById(bankId);
		if(optBank.isPresent()) {
			Bank entiyBank = optBank.get();
			BankDTO dto = new BankDTO();
			BeanUtils.copyProperties(entiyBank, dto);
			return dto;
		}
		return null;
	}
	
	@GetMapping("/getAll")
	public List<BankDTO> getBank(){
		Iterator<Bank> iter = repositoryBank.findAll().iterator();
		ArrayList<BankDTO> list = new ArrayList<>();
		while(iter.hasNext()) {
			Bank entityBank = iter.next();
			BankDTO dto = new BankDTO();
			BeanUtils.copyProperties(entityBank, dto);
			list.add(dto);
		}
		return list;
	}
}
