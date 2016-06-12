package com.gdreams.serviceImpl;

import com.gdreams.dao.SubscriptionDAO;
import com.gdreams.domain.Subscription;
import com.gdreams.repository.SubscriptionRepository;
import com.gdreams.repository.SubscriptionUpdateRepository;
import com.gdreams.service.SubscriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by sougata on 11/06/16.
 */
@Service
@Transactional
public class SubscriptionServiceImpl implements SubscriptionService {

    @Autowired
    private SubscriptionRepository subscriptionRepository;

    @Autowired
    private SubscriptionUpdateRepository subscriptionUpdateRepository;

    @Autowired
    private  JavaMailSender javaMailService;

    @Autowired
    private SubscriptionDAO subscriptionDAO;

    public Object findAll(){
        return subscriptionRepository.findAll();
    }

    public Subscription findById(Long id){
        return subscriptionRepository.findOne(id);
    }

    public Subscription findByEmail(String email){
        return subscriptionRepository.findByEmail(email);
    }

    public Subscription save(Subscription subscription){

        try {
            SimpleMailMessage mailMessage = new SimpleMailMessage();
            mailMessage.setTo(subscription.getEmail());
            mailMessage.setSubject("SubScription Confirmation");
            mailMessage.setText("Hello, " + "\n Your Subscription is successfull");
            javaMailService.send(mailMessage);
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }

        return subscriptionRepository.save(subscription);
    }

   public void updateSubscription(Subscription subscription) {
       try {
           SimpleMailMessage mailMessage = new SimpleMailMessage();
           mailMessage.setTo(subscription.getEmail());
           mailMessage.setSubject("SubScription Confirmation");
           mailMessage.setText("Hello, " + "\n Your Subscription is successfull");
           javaMailService.send(mailMessage);
       }
       catch (Exception ex) {
           ex.printStackTrace();
       }
       subscriptionUpdateRepository.updateSubscription(subscription.isEnable(), subscription.getEmail());
   }

    public void updateSubscriptionById(Subscription subscription) {
        subscriptionUpdateRepository.updateSubscription(false, subscription.getId());
    }
}
