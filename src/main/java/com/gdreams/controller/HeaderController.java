package com.gdreams.controller;

import com.gdreams.util.contact.ContactHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by sougata on 10/06/16.
 */
@Controller
@RequestMapping(value = {"","/header"})
public class HeaderController {
    private static final Logger logger = LoggerFactory
            .getLogger(HeaderController.class);

    @RequestMapping(value="loadHeader/{flag}")
    public String gotoHeader(@PathVariable String flag, Model model){
        model.addAttribute("flag", flag);
        model.addAttribute("contactPhone", ContactHelper.getContactPhoneNumber());
        model.addAttribute("contactEmail", ContactHelper.getContactEmailId());
        return "header/header";
    }

    @RequestMapping(value="loadHeader")
    public String gotoHeader(){
        return "header/header";
    }
}
