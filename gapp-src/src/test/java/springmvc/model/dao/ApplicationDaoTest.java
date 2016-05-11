package springmvc.model.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.annotations.Test;

@Test(groups = "ApplicationDaoTest")
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class ApplicationDaoTest extends AbstractTransactionalTestNGSpringContextTests {
	 @Autowired
	    ApplicationDao ApplicationDao;

	    @Test
	    public void getApplication()
	    {
	    	for(int i = 0; i < ApplicationDao.getApplications().size();i++){
	    		
	     		//to check if there is any application. There should be atleast one application.
	    		assert ApplicationDao.getApplications().get(i)!=null;

	    		//Get the name of the department and check if it it equal to Accounting as that's what mentioned in testcase.
	    		assert ApplicationDao.getApplications().get(i).getDepartment().getName().equalsIgnoreCase("Accounting");
	    		
	    		//To check if there is any valid term for application, it can't be null.
	    		assert ApplicationDao.getApplications().get(i).getTerm() != null;
	    		
	    		//It shows application filled by student1 by verifying username with its email address.
	    		assert ApplicationDao.getApplications().get(i).getBasicdetails().getEmail().equalsIgnoreCase("student1@localhost.localdomain");
	    	
	    		System.out.println(ApplicationDao.getApplications().get(i).getDepartment().getName());
	    		System.out.println(ApplicationDao.getApplications().get(i).getTerm());
	       		System.out.println(ApplicationDao.getApplications().get(i).getBasicdetails().getEmail()); 
	       		//System.out.println(ApplicationDao.getApplications().get(i).getDepartment().getName());
	    	}
//	        assert ApplicationDao.getApplications().getDepartment().getName().equalsIgnoreCase( "Accounting" );
	//        assert ApplicationDao.getApplications().getTerm().equalsIgnoreCase( "Fall 16" );
	    }
	    
	    

	   
}
