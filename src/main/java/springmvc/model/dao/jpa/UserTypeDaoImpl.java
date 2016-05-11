package springmvc.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import springmvc.model.UserType;
import springmvc.model.dao.UserTypeDao;

@Repository
public class UserTypeDaoImpl implements UserTypeDao {

	 @PersistenceContext
	    private EntityManager entityManager;
	 
	@Override
	public List<UserType> getUserType() {
		return entityManager.createQuery( "from UserType order by id", UserType.class )
	            .getResultList();
		
	}

}
