package vn.co.cex.dao.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.springframework.transaction.annotation.Transactional;

import vn.co.cex.dao.UsersDAO;
import vn.co.cex.orm.Users;

/**
 * @author QuyetVu
 *
 */
public class UsersDAOImpl extends BaseDAOImpl implements UsersDAO {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final Logger log = LogManager.getLogger(UsersDAOImpl.class);

	/**
	 * Get user list
	 */
	public List<Users> getAllUsers() {
		List<Users> result = null;
		try {
			Session session = getSessionFactory().getCurrentSession();
			SQLQuery query = session.createSQLQuery("Select * from Users");
			// execute
			result = query.list();
		} catch (Exception e) {
			log.debug(e);
		}
		return result;
	}

	/**
	 * Get user by id
	 */
	public Users getUserById(int id) {
		Users result = null;
		try {
			Session session = getSessionFactory().getCurrentSession();
			SQLQuery query = session.createSQLQuery("select * from Users where id = ?");
			query.setParameter(0, id);
			/*
			 * uniqueResult: Convenience method to return a single instance that
			 * matches the query, or null if the query returns no results
			 */
			result = (Users) query.uniqueResult();
		} catch (Exception e) {
			log.debug(e);
		}
		return result;
	}

	/**
	 * Check login
	 */
	@Transactional
	public Users validateInformation(String email, String password) {
		Users result = null;
		try {
			Session session = getSessionFactory().getCurrentSession();
			SQLQuery query = session.createSQLQuery("select * from Users where email = ? and password = ?");
			query.setString(0, email);
			query.setString(1, password);
			query.setResultTransformer(new AliasToBeanResultTransformer(Users.class));
			result = (Users) query.uniqueResult();
		} catch (Exception e) {
			log.debug(e);
		}
		return result;
	}
}
