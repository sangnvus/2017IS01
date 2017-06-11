package vn.co.cex.bean.login;

import java.io.Serializable;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import vn.co.cex.bo.UsersBO;
import vn.co.cex.orm.Users;
import vn.co.cex.utils.SessionUtils;

/**
 * @author QuyetVu
 *
 */
@SuppressWarnings("restriction")
@ManagedBean(name = "loginBean", eager = true)

@SessionScoped
public class LoginBean implements Serializable {

	private static final long serialVersionUID = 1L;

	@ManagedProperty(value = "#{usersBO}")
	private UsersBO usersBO;

	private String userName;

	private String email;
	private String password;

	public UsersBO getUsersBO() {
		return usersBO;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setUsersBO(UsersBO usersBO) {
		this.usersBO = usersBO;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@PostConstruct
	public void init() {
		try {
			// Check isLogin
			userName = "Login";

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Check Login
	 * 
	 * @return
	 */
	public String validateUsernamePassword() {
		try {
			Users user = usersBO.validateInformation(email, password);
			if (user != null) {
				HttpSession session = SessionUtils.getSession();
				session.setAttribute("userLogin", user);
				userName = user.getFullName();
				// redirect to UserView page
				return "userView";
			} else {
				FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_WARN,
						"Incorrect Username and Passowrd!", "Please enter correct username and Password!"));
				// direct to login page
				return "login";
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			// direct to login page
			return "login";
		}
	}

	public String logoutProcess() {
		HttpSession session = SessionUtils.getSession();
		if (session != null) {
			session.invalidate();
		}
		System.err.println("Process Logout");
		return "home";
	}

	public String loginProcess() {
		// FacesContext.getCurrentInstance().getApplication().getNavigationHandler()
		// .handleNavigation(FacesContext.getCurrentInstance(), null,
		// "Home.xhtml?faces-redirect=true");
		System.err.println("Process Login");
		return "login";
	}
}