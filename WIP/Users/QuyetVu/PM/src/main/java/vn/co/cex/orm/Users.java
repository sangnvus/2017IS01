package vn.co.cex.orm;

import java.util.Date;

public class Users implements java.io.Serializable {
	
	private int id;
	private String code;
	private String fullName;
	private String email;
	private String password;
	private String phoneNumber;
	private String address;
	private String province;
	private String district;
	private String identityCard;
	private String identityCardPlace;
	private Date identityCardDate;
	private int role;
	private boolean status;
	private Date created;
	
	public Users(){
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
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

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getIdentityCard() {
		return identityCard;
	}

	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
	}

	public String getIdentityCardPlace() {
		return identityCardPlace;
	}

	public void setIdentityCardPlace(String identityCardPlace) {
		this.identityCardPlace = identityCardPlace;
	}

	public Date getIdentityCardDate() {
		return identityCardDate;
	}

	public void setIdentityCardDate(Date identityCardDate) {
		this.identityCardDate = identityCardDate;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}
}
