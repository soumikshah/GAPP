package springmvc.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.Programs;
import springmvc.model.User;
import springmvc.model.UserType;
import springmvc.model.dao.UserDao;

@Controller
public class UserController {

    @Autowired
    private UserDao userDao;

    @RequestMapping("/login.html")
    public String department( ModelMap models )
    {
        models.put( "users", userDao.getUsers() );
//        for(Programs de:departmentDao.getDepartment().get(1).getPrograms()){
//        	System.out.println(de.getName());
//        }
       // System.out.println(departmentDao.getDepartment().get(1).getPrograms());
        //System.out.println(userDao.getUsers());
       // models.put("department", departmentDao.getDepartment().get(1).getPrograms());
        return "login";
    }
    
    @RequestMapping("/users.html")
    public String users( ModelMap models )
    {
        models.put( "users", userDao.getUsers() );
        return "users";
    }
    
    @RequestMapping(value="/add.html", method=RequestMethod.GET)
    public String add(){
    return "add";
    }
    
    @RequestMapping(value="/add.html", method=RequestMethod.POST)
    public String add(ModelMap models,@RequestParam String lastname, @RequestParam String firstname, @RequestParam String email, @RequestParam String password){
    	
    	User user = new User();
    	user.getUsertype();
    	
    	System.out.println(user.getUsertype());
    	//user.setUsertype();
    	//user.setUsertype();
    	user.setFirstname(firstname);
    	user.setLastname(lastname);
    	user.setEmail(email);
    	user.setPassword(password);
    	//user.setUsertype(3);t
    	//for(UserType de:){
    	//models.put("user", user.getUsertype().getId() );
    	//user.setUsertype(usertypes);
    	//System.out.println(user.setUsertype());
    	//System.out.println(usertypes.getUsers());
//    	user.setUsertype(usertypes);
    	
    	 System.out.println(user.getFirstname()+","+user.getEmail());
    	user=userDao.saveUser(user);
    	return "redirect:login.html";
    }

}