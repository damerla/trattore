package com.trattore.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.transaction.annotation.Transactional;

import com.trattore.models.Customer;

@Transactional
public interface CustomerRepository extends PagingAndSortingRepository<Customer, Long>, CrudRepository<Customer, Long>{

}
