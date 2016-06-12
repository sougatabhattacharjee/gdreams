package com.gdreams.repository;

import com.gdreams.domain.Subscription;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;


/**
 * Created by sougata on 12/06/16.
 */
public interface SubscriptionUpdateRepository extends Repository<Subscription, Long> {

    @Modifying
    @Query(value = "update Subscription set enable = :enable where email=:email")
    void updateSubscription(@Param("enable") boolean enable, @Param("email") String email);

    @Modifying
    @Query(value = "update Subscription set enable = :enable where id=:id")
    void updateSubscription(@Param("enable") boolean enable, @Param("id") Long id);
}
