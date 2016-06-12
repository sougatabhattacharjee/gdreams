package com.gdreams.repository;

import com.gdreams.domain.ContactUs;
import com.gdreams.domain.Subscription;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by sougata on 10/06/16.
 */
@Repository
public interface ContactUsRepository extends CrudRepository<ContactUs,Long> {

}
