package com.gdreams.serviceImpl;

import com.gdreams.dao.SubscriptionDAO;
import com.gdreams.domain.ContactUs;
import com.gdreams.domain.Subscription;
import com.gdreams.repository.ContactUsRepository;
import com.gdreams.repository.SubscriptionUpdateRepository;
import com.gdreams.service.ContactUsService;
import com.gdreams.service.SubscriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by sougata on 11/06/16.
 */
@Service
@Transactional
public class ContactUsServiceImpl implements ContactUsService {

    @Autowired
    private ContactUsRepository contactUsRepository;

    public ContactUs save(ContactUs contactUs){
        return contactUsRepository.save(contactUs);
    }

}
