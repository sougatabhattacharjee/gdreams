package com.gdreams.repository;

import com.gdreams.domain.Subscription;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by sougata on 10/06/16.
 */
@Repository
public interface SubscriptionRepository extends CrudRepository<Subscription,Long> {

    public Subscription findByEmail(String email);

}
