package springmvc.model.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.annotations.Test;

@Test(groups = "DepartmentnDaoTest")
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class DepartmentDaoTest extends AbstractTransactionalTestNGSpringContextTests{
	 @Autowired
	    DepartmentDao DepartmentDao;
	 	//int j =2;
	    @Test
	    public void getDepartment()
	    {
	    	for(int i =1; i<DepartmentDao.getDepartment().size();i++){
	    		
	    		/* To check if there are two departments. Had to hardcode 2,
	    		because if I don't hardcode it I would have to use if(i==DepartmentDao.getDepartment().size())
	    		but it won't fulfill your requirement of having two departments. As it will go on and on till all
	    		departments are iterated. */
	    		if(DepartmentDao.getDepartment().size()==2){
	    		assert DepartmentDao.getDepartment().get(i).getName()!=null;
	    		}
	    		
	    		assert DepartmentDao.getDepartment().get(i).getId()==DepartmentDao.getDepartment().size();
	    		System.out.println(DepartmentDao.getDepartment().get(i).getId());
	    		
	    		System.out.println(DepartmentDao.getDepartment().get(i).getName());
	    		System.out.println(DepartmentDao.getDepartment().size());
	    	}
	    }
}
