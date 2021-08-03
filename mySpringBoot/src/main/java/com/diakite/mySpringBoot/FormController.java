package com.diakite.mySpringBoot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller  //annotate this class as a controller class
public class FormController {
	@Autowired
	CustomersRepo repo; //value injected by spring once an instance of class is created. eliminates need for setter method
	
	/**
	 * Method invoked when localhost is called by browser
	 * 
	 * @return infoForm
	 */
	@RequestMapping("/") //maps this method to "/" url. 
	public String details() {
		return "infoForm.jsp";
	}
	
	/**
	 * Method invoked when "add" action is initiated after user clicks submit button in infoForm.jsp
	 * browser returns to same page, however customers object is persisted for later retrieval
	 * @return infoForm
	 */
	@RequestMapping("/add")
	public String details(Customers customers) {
		repo.save(customers);
		System.out.println(customers);
		return "infoForm.jsp";
	}	
		
	/**
	 * Method invoked when "/getDetails" URL is rendered by browser
	 * 
	 * @return CustomerDetails
	 */
	@RequestMapping("/getDetails")
	public String getDetails() {
		
		return "CustomerDetails.jsp";
	}	
	
	/**
	 * Post method invoked when when user submits request for customer information using their id number
	 * @param cid  customer id from form inside "CustomerDetails.jsp"
	 * @return "Retrieve.jsp"
	 */
	@PostMapping("/getDetails")
	public ModelAndView getDetails(@RequestParam int cid) {
		ModelAndView mv = new ModelAndView("Retrieve.jsp");
		Customers customers = repo.findById(cid).orElse(null); //"orElse(null)" method necessary because id may not be present in repository
		mv.addObject(customers);
		return mv;
	}
	

}
