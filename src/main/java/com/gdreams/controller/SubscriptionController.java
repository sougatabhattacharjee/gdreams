package com.gdreams.controller;

import com.gdreams.domain.Subscription;
import com.gdreams.service.SubscriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;

import static com.gdreams.util.Helpers.isStringEmpty;

/**
 * Created by sougata on 10/06/16.
 */

@Controller
@RequestMapping(value = {"", "/"})
public class SubscriptionController {

    @Autowired
    private SubscriptionService subscriptionService;

    @ResponseBody
    @RequestMapping(value = "subscription/save", method = RequestMethod.POST)
    public String saveSubscription(Subscription subscription) {

        Subscription checkSubscription = this.subscriptionService.findByEmail(subscription.getEmail());

        // @TODO send email confirmation about the subscription
        if (checkSubscription == null)
            subscriptionService.save(subscription);
        else if (!checkSubscription.isEnable())
            checkSubscription(subscription);
        else
            throw new RuntimeException("Email already subscribed!");
        return "redirect:/";
    }


    @RequestMapping(value = "subscription/delete", method = RequestMethod.POST)
    public String deleteSubscription(Subscription subscription) {

        // @TODO send a link of UnSubscription to the user
        delSubscription(subscription);

        return "redirect:/";
    }

    @RequestMapping(value = "unsubscribe/{id}", method = RequestMethod.GET)
    public String unsubscribe(@PathVariable("id") long id) {

        Subscription checkSubscription = this.subscriptionService.findById(id);

        subscriptionService.updateSubscriptionById(checkSubscription);

        return "unsubscribe";
    }

    public void checkSubscription(Subscription subscription) {
        Subscription checkSubscription = this.subscriptionService.findByEmail(subscription.getEmail());

        if (checkSubscription != null)
            subscriptionService.updateSubscription(subscription);
        else
            throw new RuntimeException("Email does not exist");
    }

    @Autowired
    private JavaMailSender javaMailService;

    public void delSubscription(Subscription subscription) {
        Subscription checkSubscription = this.subscriptionService.findByEmail(subscription.getEmail());

        if (checkSubscription != null) {
            SimpleMailMessage mailMessage = new SimpleMailMessage();
            mailMessage.setTo(subscription.getEmail());
            mailMessage.setSubject("UnSubScription Confirmation");
            mailMessage.setText("Hello, " + "\n To Unsubscribe please follow the link "
                    +"\n http://localhost:8080/unsubscribe/"+checkSubscription.getId());
            javaMailService.send(mailMessage);


//            subscriptionService.updateSubscription(subscription);
        }
        else
            throw new RuntimeException("Email does not exist");
    }

}
