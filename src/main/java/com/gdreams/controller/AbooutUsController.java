package com.gdreams.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by sougata on 10/06/16.
 */
@Controller
@RequestMapping(value = {"","/"})
public class AbooutUsController {
    private static final Logger logger = LoggerFactory
            .getLogger(AbooutUsController.class);

    @RequestMapping(value="aboutus")
    public String gotoNextPage(Model model){

        return "about";
    }
}
