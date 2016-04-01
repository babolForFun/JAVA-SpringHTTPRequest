package com.babolforfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;


@Controller  
public class ExecuteRequest {

    @RequestMapping(value = "/executerequest", method = RequestMethod.POST)  
    public ModelAndView executeRequest(HttpServletRequest requestIn,HttpServletResponse res) {  
    	
    	// Get URL from request  
        String url = requestIn.getParameter("url");        

        // RestTemplate object
        RestTemplate restTemplate = new RestTemplate();

        // Request body
        MultiValueMap<String, String> postParam = new LinkedMultiValueMap<String, String>();     
        postParam.add("field", "value");

        // Note the body object as first parameter!
        HttpEntity<?> request = new HttpEntity<Object>(postParam);

        // Exchange
		HttpEntity<String> response = restTemplate.exchange(url, HttpMethod.POST, request, String.class);

		// Create model
		ModelAndView model = new ModelAndView("executerequest");
		model.addObject("header", response.getHeaders().toString());
		model.addObject("body",   response.getBody().toString());
		
		// return model
        return model;  
    }  
    
}
