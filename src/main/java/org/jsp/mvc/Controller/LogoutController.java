package org.jsp.mvc.Controller;

import javax.servlet.http.HttpSession;

import org.jsp.mvc.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController {
	@Autowired
	private UserService service;
   
	@RequestMapping("/logout")
	public String logout(HttpSession session ,Model model) {
		session.invalidate();
		model.addAttribute("message"," Your Logged Out");
		return "login";
	}
    @RequestMapping("/delete")
    public  ModelAndView deleteUser(@RequestParam int id , ModelAndView view,HttpSession session) {
 	   service.deletUser(id);
 	   session.invalidate();
 	   view.setViewName("print");
 	   view.addObject("message", "User Deleted!!");
 	   return view;
    }
}
