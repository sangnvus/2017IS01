package vn.co.cex.bo;

import java.util.List;

import vn.co.cex.orm.Users;

/**
 * @author QuyetVu
 *
 */
public interface UsersBO {
	/**
	 * Get List Users
	 * @return
	 */
	public List<Users> getAllUsers();
	
	/**
	 * Get User by id
	 * @param id
	 * @return
	 */
	public Users getUserById(int id);
	
	/**
	 * 
	 * @param email
	 * @param password
	 * @return
	 */
	public Users validateInformation(String email, String password);
}
