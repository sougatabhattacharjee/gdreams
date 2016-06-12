package com.gdreams.controller;

import com.gdreams.util.contact.ContactHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by sougata on 10/06/16.
 */
@Controller
@RequestMapping(value = {"","/footer"})
public class FooterController {
    private static final Logger logger = LoggerFactory
            .getLogger(FooterController.class);

    @RequestMapping(value="loadFooter")
    public String gotoNextPage(Model model){
        model.addAttribute("contactPhone", ContactHelper.getContactPhoneNumber());
        model.addAttribute("contactEmail", ContactHelper.getContactEmailId());
        model.addAttribute("contactFacebook", ContactHelper.getContactFacebook());
        model.addAttribute("contactTwitter", ContactHelper.getContactTwitter());
        model.addAttribute("contactGoogleplus", ContactHelper.getContactGooglePlus());
        model.addAttribute("contactLinkedin", ContactHelper.getContactLinkedin());
        return "footer/footer";
    }
}
