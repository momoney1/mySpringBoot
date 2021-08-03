package com.diakite.mySpringBoot;

import org.springframework.data.repository.CrudRepository;
/**
 * CustomersRepo interface that extends CrudRepository interface to access methods for CRUD operations
 * This interface will be autowired into "FormController" class.
 * 
 */
public interface CustomersRepo extends CrudRepository<Customers, Integer>{
	
}
