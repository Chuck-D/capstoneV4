package com.claim.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.claim.entity.Flier;
import com.claim.entity.Survey;
import com.claim.repository.AirlineRepo;
import com.claim.repository.FlierRepo;
import com.claim.repository.SurveyRepo;
import com.twilio.rest.chat.v1.service.User;


@Controller
@SessionAttributes("loggedInFlier")
public class HomeController {
	
	@Autowired
	FlierRepo inRepo;
	
	@Autowired
	SurveyRepo surveyRepo;
	
	@Autowired
	SendMail sendMail;
	
	@Autowired
	AirlineRepo airlineRepo;
	
	 @RequestMapping("/index") 
	 public ModelAndView home()
	 { 
		 return new ModelAndView("index"); }
	 
	 @RequestMapping("/profile") 
	 public ModelAndView profile()
	 { 
		 return new ModelAndView("profile"); }
	 
	 @RequestMapping("/admin") 
	 public String admin(Model model){	 
		 
		    
		    
		    	model.addAttribute("users",inRepo.findAll());
		    	return "admin";
		    
		     //(flier.getRole().equals("Admin")) 		
			
		 //List <User> list= new ArrayList<User>();
		 //inRepo.findAll().forEach(u -> list.add(u));		 
		    
			
	 } 
	 
	 @RequestMapping("/give-role") 
	 public String giverole(@RequestParam int id, @RequestParam String role, RedirectAttributes redirect, Model model){
		 
		 Flier user= inRepo.findById(id).get();
		 user.setRole(role);
		 inRepo.save(user);
		 
		 redirect.addFlashAttribute("msg","Role updated to "+role);
		 
		 return "redirect:/admin";
	 } 
	 
	 @RequestMapping("/login")
	 public ModelAndView login()
	 {
		 return new ModelAndView("login");
		 
	 }
	 
	 @RequestMapping(value="/loginFlier",
	 method=RequestMethod.POST)
	 
	 public String loginFlier(@ModelAttribute("flier")Flier flier, HttpSession session) {
		
		 System.out.println(flier);
		 try {
			Flier loggedInFlier = inRepo.login(flier.getEmail(), flier.getPassword());
			    
			if(loggedInFlier==null) {
				return "index";
			} 
			 else {
				 session.setAttribute("loggedInFlier",loggedInFlier);
			//	 session.setAttribute("msg", surveyRepo.findAll());
				 session.setAttribute("JetBlue", surveyRepo.airlineByName("JetBlue"));
				 session.setAttribute("Southwest", surveyRepo.airlineByName("Southwest"));
				 session.setAttribute("Alaska", surveyRepo.airlineByName("Alaska"));
				 session.setAttribute("American", surveyRepo.airlineByName("American"));
				 session.setAttribute("United", surveyRepo.airlineByName("United"));
				 session.setAttribute("Delta", surveyRepo.airlineByName("Delta"));
				 session.setAttribute("Spirit", surveyRepo.airlineByName("Spirit"));
				 session.setAttribute("Hawaiian", surveyRepo.airlineByName("Hawaiian"));
				//	session.setAttribute("Allegiant", surveyRepo.airlineByName("JetBlue"));
				 session.setAttribute("Frontier", surveyRepo.airlineByName("Frontier"));
			//	 session.setAttribute("JetBlueComfort", surveyRepo.avgOfComfortRatings("JetBlue"));
			//	 session.setAttribute("JetBlueComfortRD", surveyRepo.avgOfComfortRatingsRounded("JetBlue"));
				 session.setAttribute("JetBlueComfortSum", surveyRepo.sumOfComfortRatings("JetBlue"));
			//	 session.setAttribute("JetBlueLegroom", surveyRepo.avgOfLegroomRatings("JetBlue"));
			//	 session.setAttribute("JetBlueComfortRD", surveyRepo.avgOfLegroomRatingsRounded("JetBlue"));
				 session.setAttribute("JetBlueLegroomSum", surveyRepo.sumOfLegroomRatings("JetBlue"));
				 session.setAttribute("JetBlueSum", surveyRepo.sumOfRatings("JetBlue"));
				 session.setAttribute("SouthwestSum", surveyRepo.sumOfRatings("Southwest"));
				 session.setAttribute("SouthwestComfortSum", surveyRepo.sumOfComfortRatings("Southwest"));
				 session.setAttribute("SouthwestLegroomSum", surveyRepo.sumOfLegroomRatings("Southwest"));
				 session.setAttribute("AlaskaComfortSum", surveyRepo.sumOfComfortRatings("Alaska"));
				 session.setAttribute("AlaskaLegroomSum", surveyRepo.sumOfLegroomRatings("Alaska"));
				 session.setAttribute("AlaskaSum", surveyRepo.sumOfRatings("Alaska"));
				 session.setAttribute("AmericanComfortSum", surveyRepo.sumOfComfortRatings("American"));
				 session.setAttribute("AmericanLegroomSum", surveyRepo.sumOfLegroomRatings("American"));
				 session.setAttribute("AmericanSum", surveyRepo.sumOfRatings("American"));
				 session.setAttribute("UnitedComfortSum", surveyRepo.sumOfComfortRatings("United"));
				 session.setAttribute("UnitedLegroomSum", surveyRepo.sumOfLegroomRatings("United"));
				 session.setAttribute("UnitedSum", surveyRepo.sumOfRatings("United"));
				 session.setAttribute("DeltaComfortSum", surveyRepo.sumOfComfortRatings("Delta"));
				 session.setAttribute("DeltaLegroomSum", surveyRepo.sumOfLegroomRatings("Delta"));
				 session.setAttribute("DeltaSum", surveyRepo.sumOfRatings("Delta"));
				 session.setAttribute("HawaiianComfortSum", surveyRepo.sumOfComfortRatings("Hawaiian"));
				 session.setAttribute("HawaiianLegroomSum", surveyRepo.sumOfLegroomRatings("Hawaiian"));
				 session.setAttribute("HawaiianSum", surveyRepo.sumOfRatings("Hawaiian"));
				 session.setAttribute("FrontierComfortSum", surveyRepo.sumOfComfortRatings("Frontier"));
				 session.setAttribute("FrontierLegroomSum", surveyRepo.sumOfLegroomRatings("Frontier"));
				 session.setAttribute("FrontierSum", surveyRepo.sumOfRatings("Frontier"));
				 session.setAttribute("SpiritComfortSum", surveyRepo.sumOfComfortRatings("Spirit"));
				 session.setAttribute("SpiritLegroomSum", surveyRepo.sumOfLegroomRatings("Spirit"));
				 session.setAttribute("SpiritSum", surveyRepo.sumOfRatings("Spirit"));
				 
				 
				 
				 
			 }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return "airline-seat-ratings3";		 	 
	 }
	 
	 @RequestMapping("/registry") 
	 public ModelAndView registry()
	 { 
		 return new ModelAndView("registry", "flier", new Flier()); }
	
	 
	 
	 @RequestMapping(value="/registerFlier",
			 method = RequestMethod.POST)
	 public ModelAndView registerFlier(@ModelAttribute("flier")Flier flier, Model model) {
		 
		 System.out.println(flier);
		 flier.setRole("User");
		 inRepo.save(flier);
		 sendMail.sendMail(flier.getEmail(), "Welcome","Hi "+flier.getFirstName());
		  model.addAttribute("msg","Registration success");
		 return new ModelAndView("index");
	 }
	 
    @RequestMapping(value = "/logout", method = RequestMethod.GET)	
    @ResponseBody
	 public String logout(Model model, RedirectAttributes redirect, SessionStatus status, WebRequest request){
    	status.setComplete();
    	redirect.addFlashAttribute("loggedInFlier", WebRequest.SCOPE_SESSION);
    	redirect.addFlashAttribute("msg", "You have been signed out");
    	return "You have signed out <a href=\"index\">Home</a>";
	 }
	 
	 
	 @RequestMapping(value = "/submitSurvey", method = RequestMethod.POST)
	 
	 public ModelAndView submitSurvey(@ModelAttribute("survey")Survey survey){
		 surveyRepo.save(survey);
		 return new ModelAndView("redirect:/airline-seat-ratings3");
	 }
	 
	 
	 
	 @RequestMapping(value="/airline-seat-ratings3", method = RequestMethod.GET)
	 public String learn(Model model){ 
		//was getting an error so wrapped in try/catch.  Also, wasn't doing calculations when logged out.
		 try {
			model.addAttribute("JetBlue", surveyRepo.airlineByName("JetBlue"));
			model.addAttribute("Southwest", surveyRepo.airlineByName("Southwest"));
			model.addAttribute("Alaska", surveyRepo.airlineByName("Alaska"));
			model.addAttribute("American", surveyRepo.airlineByName("American"));
			model.addAttribute("United", surveyRepo.airlineByName("United"));
			model.addAttribute("Delta", surveyRepo.airlineByName("Delta"));
			model.addAttribute("Spirit", surveyRepo.airlineByName("Spirit"));
			model.addAttribute("Hawaiian", surveyRepo.airlineByName("Hawaiian"));
//	model.addAttribute("Allegiant", surveyRepo.airlineByName("JetBlue"));
			model.addAttribute("Frontier", surveyRepo.airlineByName("Frontier"));
			model.addAttribute("JetBlueSum", surveyRepo.sumOfRatings("JetBlue"));
//  model.addAttribute("JetBlueComfortRD", surveyRepo.avgOfComfortRatingsRounded("JetBlue"));
			model.addAttribute("JetBlueComfortSum", surveyRepo.sumOfComfortRatings("JetBlue"));
			model.addAttribute("JetBlueLegroomSum", surveyRepo.sumOfLegroomRatings("JetBlue"));
			model.addAttribute("SouthwestComfortSum", surveyRepo.sumOfComfortRatings("Southwest"));
			model.addAttribute("SouthwestLegroomSum", surveyRepo.sumOfLegroomRatings("Southwest"));
			model.addAttribute("SouthwestSum", surveyRepo.sumOfRatings("Southwest"));
			model.addAttribute("AlaskaComfortSum", surveyRepo.sumOfComfortRatings("Alaska"));
			model.addAttribute("AlaskaLegroomSum", surveyRepo.sumOfLegroomRatings("Alaska"));
			model.addAttribute("AlaskaSum", surveyRepo.sumOfRatings("Alaska"));
			model.addAttribute("AmericanComfortSum", surveyRepo.sumOfComfortRatings("American"));
			model.addAttribute("AmericanLegroomSum", surveyRepo.sumOfLegroomRatings("American"));
			model.addAttribute("AmericanSum", surveyRepo.sumOfRatings("American"));
			model.addAttribute("UnitedComfortSum", surveyRepo.sumOfComfortRatings("United"));
			model.addAttribute("UnitedLegroomSum", surveyRepo.sumOfLegroomRatings("United"));
			model.addAttribute("UnitedSum", surveyRepo.sumOfRatings("United"));
			model.addAttribute("DeltaComfortSum", surveyRepo.sumOfComfortRatings("Delta"));
			model.addAttribute("DeltaLegroomSum", surveyRepo.sumOfLegroomRatings("Delta"));
			model.addAttribute("DeltaSum", surveyRepo.sumOfRatings("Delta"));
			model.addAttribute("HawaiianComfortSum", surveyRepo.sumOfComfortRatings("Hawaiian"));
			model.addAttribute("HawaiianLegroomSum", surveyRepo.sumOfLegroomRatings("Hawaiian"));
			model.addAttribute("HawaiianSum", surveyRepo.sumOfRatings("Hawaiian"));
			model.addAttribute("FrontierComfortSum", surveyRepo.sumOfComfortRatings("Frontier"));
			model.addAttribute("FrontierLegroomSum", surveyRepo.sumOfLegroomRatings("Frontier"));
			model.addAttribute("FrontierSum", surveyRepo.sumOfRatings("Frontier"));
			model.addAttribute("SpiritComfortSum", surveyRepo.sumOfComfortRatings("Spirit"));
			model.addAttribute("SpiritLegroomSum", surveyRepo.sumOfLegroomRatings("Spirit"));
			model.addAttribute("SpiritSum", surveyRepo.sumOfRatings("Spirit"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "index";
		}
		
		
	     return "airline-seat-ratings3";
     }
     	 
	 
	 @RequestMapping("/about") 
	 public ModelAndView about()
	 { 
		 return new ModelAndView("about"); }
	 
	 @RequestMapping("/contact") 
	 public ModelAndView contact()
	 { 
		 return new ModelAndView("contact"); }
	 
	 @RequestMapping("/survey")
		 public ModelAndView survey() {
		 
		 return new ModelAndView("survey");
	 }
	 
}
