package com.yesenia.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.yesenia.models.Dojo;

public interface DojoRepository extends CrudRepository<Dojo, Long>{
	List<Dojo> findAll();
}
