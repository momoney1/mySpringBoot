package com.diakite.mySpringBoot;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller  //Marks the class as a controller
public class courseController {
	@RequestMapping("/Courses") //map this method to the specified URL.  Method invoked when this URL is activated by browser
	public String Courses(HttpServletRequest req) {
		HttpSession session = req.getSession();  //Session object to keep track of particular user state throughout interaction with server
		String cname = req.getParameter("cname"); //retrieval and storing of user name in string
		//System.out.println("the product name is "+ cname);
		session.setAttribute("cname", cname); //storing user name in session
		return "index.jsp"; //return this jsp template to browser.
	}

}
