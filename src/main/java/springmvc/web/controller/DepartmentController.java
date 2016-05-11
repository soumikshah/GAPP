///*package springmvc.web.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import springmvc.model.*;
//import springmvc.model.dao.*;;
//
//
//@Controller
//public class DepartmentController {
//
//    @Autowired
//    private DepartmentDao departmentDao;
//    
//    
// 
//    @RequestMapping("/department.html")
//    public String department( ModelMap models )
//    {
//        models.put( "department", departmentDao.getDepartment() );
////        for(Programs de:departmentDao.getDepartment().get(1).getPrograms()){
////        	System.out.println(de.getName());
////        }
//       // System.out.println(departmentDao.getDepartment().get(1).getPrograms());
//        System.out.println(departmentDao.getDepartment().get(1).getName());
//       // models.put("department", departmentDao.getDepartment().get(1).getPrograms());
//        return "department";
//    }
//    
//    @RequestMapping("/programs.html")
//    public String program(@RequestParam Integer id,ModelMap models){
//    	id = id - 1;
//    	for(Programs de:departmentDao.getDepartment().get(id).getPrograms()){
//    		models.put("programs", de);
//    		System.out.println(id);
//    		System.out.println(de.getName());
//        }
//    	
//    	//System.out.println(departmentDao.getDepartment().get(id).getPrograms());
//    	//System.out.println(id);
//		return "programs";
//    	
//    }
//    
//   
//}*/