package com.reservation.form.mvc;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.TreeSet;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class FormController {
	LinkedList<Form> formset = new LinkedList<Form>();
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class,stringTrimmerEditor);
		
//		 SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
//		    dataBinder.registerCustomEditor(Date.class, new CustomDateEditor(
//		            dateFormat, false));
	}
	
	@RequestMapping("/reservationForm")
	public String form(Model themodel) {
		Form newForm = new Form();
		themodel.addAttribute("form",newForm);
		return "form/reservationForm";
	}
	
	@RequestMapping("/reservationDetails")
	public String reservationDetails(@Valid@ModelAttribute("form") Form form,BindingResult bindingResult) {
//		System.out.println("Name :"+form.getName()+" Email :"+form.getEmail());
		System.out.println(bindingResult);
		if(bindingResult.hasErrors()) {
			
			return "form/reservationForm";
		}
		formset.add(form);
		
		return "homepage";
	}
	
	@RequestMapping("/homepage")
	public String home() {
		return "homepage";
	}
	
	@RequestMapping("/showRegisteredForm")
	public String showRegisteredForm(Model themodel) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		themodel.addAttribute("dateformat", dateFormat);
		themodel.addAttribute("formset",formset);
		return "form/reservationDetails";
	}
}
