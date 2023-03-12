package org.fi.lifesaver.repositories;

import org.fi.lifesaver.entity.Hospital;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HospitalRepository extends CrudRepository<Hospital, Integer> {

}
