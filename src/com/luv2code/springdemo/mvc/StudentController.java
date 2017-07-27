package com.luv2code.springdemo.mvc;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Created by Adrien Schricke on 30/05/2017.
 */
@Controller
@RequestMapping("/student")
public class StudentController {
    @Value("#{countryOptions}")
    private Map<String, String> countryOptions;

    @Value("#{languageOptions}")
    private Map<String, String> languageOptions;

    @Value("#{OSOptions}")
    private Map<String, String> theOSoptions;

    @RequestMapping("/showForm")
    public String showForm(Model model){
        model.addAttribute("student", new Student());
        model.addAttribute("theCountryOptions", countryOptions);
        model.addAttribute("theLanguageOptions", languageOptions);
        model.addAttribute("theOSoptions", theOSoptions);
        return "student-form";
    }

    @RequestMapping("/processForm")
    public String processForm(@ModelAttribute("student") Student student){
        System.out.println("student = " + student);
        return "student-confirmation";
    }
}
