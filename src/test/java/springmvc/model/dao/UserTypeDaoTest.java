package springmvc.model.dao;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.annotations.Test;

import springmvc.model.User;

@Test(groups = "UserTypeDaoTest")
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class UserTypeDaoTest extends AbstractTransactionalTestNGSpringContextTests {
	@Autowired
	UserTypeDao usertypeDao;

	@Test
	public void getUserType() {
		System.out.println("ok");
		Set<User> names =usertypeDao.getUserType().get(1).getUsers();
		for(User s : names){
			System.out.println("inside"+s);
		}
		
		
	}
}
