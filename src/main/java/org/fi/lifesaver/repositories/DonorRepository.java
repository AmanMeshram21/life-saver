package org.fi.lifesaver.repositories;

import org.fi.lifesaver.entity.Donor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DonorRepository extends CrudRepository<Donor, Integer>{

}
