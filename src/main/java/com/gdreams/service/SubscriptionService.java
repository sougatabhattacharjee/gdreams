package com.gdreams.service;

import com.gdreams.domain.Subscription;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by sougata on 10/06/16.
 */

public interface SubscriptionService {

    public Object findAll();

    public Subscription findById(Long id);

    public Subscription findByEmail(String email);

    public Subscription save(Subscription subscription);

    public void updateSubscription(Subscription subscription);

    public void updateSubscriptionById(Subscription subscription);

}
