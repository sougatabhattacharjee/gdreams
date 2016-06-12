package com.gdreams.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by sougata on 10/06/16.
 */

@Controller
@RequestMapping(value = {"","/"})
public class EduconController {


    @RequestMapping(value = {"/","index"})
    public String index(Model model){

        return "index";
    }


}
