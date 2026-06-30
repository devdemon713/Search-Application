package com.spring.search.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {

    @RequestMapping("/home")
    public String home() {
        System.out.println("going to home view..");
        return "home";
    }

    @RequestMapping("/redirect")
    public String Redirect() {
        System.out.println("going to home view..");
        return "redirect:/home";
    }

    @RequestMapping("/search")
    public RedirectView search(@RequestParam("querybox") String query) {
        String url;
        try {
            url = "https://www.google.com/search?q=" + URLEncoder.encode(query, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            url = "https://www.google.com/search?q=" + query.replaceAll(" ", "+");
        }
        return new RedirectView(url);
    }

}
