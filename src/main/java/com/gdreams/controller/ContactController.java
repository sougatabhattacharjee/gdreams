package com.gdreams.controller;

import com.gdreams.domain.ContactUs;
import com.gdreams.service.ContactUsService;
import com.gdreams.util.contact.ContactHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by sougata on 10/06/16.
 */
@Controller
@RequestMapping(value = {"","/"})
public class ContactController {
    private static final Logger logger = LoggerFactory
            .getLogger(ContactController.class);

    @Autowired
    private ContactUsService contactUsService;

    @Autowired
    private JavaMailSender javaMailService;

    @RequestMapping(value="contact")
    public String gotoNextPage(Model model){
        model.addAttribute("contactPhone", ContactHelper.getContactPhoneNumber());
        model.addAttribute("contactEmail", ContactHelper.getContactEmailId());
        model.addAttribute("contactSkype", ContactHelper.getContactSkype());
        model.addAttribute("contactHangout", ContactHelper.getContactHangout());
        return "contact";
    }


    @RequestMapping(value = "contactus/save", method = RequestMethod.POST)
    public String contactUs (ContactUs contactUs) {

        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo(contactUs.getEmail());
        mailMessage.setSubject(contactUs.getSubject());

        StringBuilder sb = new StringBuilder();
        sb.append("Hello German Dreams,");
        sb.append("\n");
        sb.append("My name is "+contactUs.getName()+". ");
        sb.append("My phone number is "+contactUs.getPhone()+". ");
        sb.append("My email id is "+contactUs.getEmail()+". ");
        sb.append("\n");
        sb.append("\n");
        sb.append(contactUs.getMessage());
        sb.append("\n");
        sb.append("\n");
        sb.append("\n");
        sb.append("Best Regards,");
        sb.append("\n");
        sb.append(contactUs.getName());

        mailMessage.setText(sb.toString());
        javaMailService.send(mailMessage);

        contactUsService.save(contactUs);
        return "redirect:/contact";
    }
}
