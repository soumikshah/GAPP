package springmvc.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping({"/index.html","/home.html"})
    public String index(ModelMap models)
    {
    	models.put("users", "John");
        return "home";
    }
    
    @RequestMapping("/userregistration.html")
    public String userregistration()
    {
//    	models.put("user", "John");
        return "userregistration";
    }

}
