package vn.co.cex.bean;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import vn.co.cex.bo.ProvinceBO;
import vn.co.cex.orm.Province;
@SuppressWarnings("restriction")
@ManagedBean(name = "provinceBean", eager = true)
public class ProvinceBean extends BaseBean {
	
	@ManagedProperty(value = "#{provinceBO}")
	private ProvinceBO provinceBO;
	
	private List<Province> provinceList;
	
	/**
	 * Init data provinceList
	 */
	@PostConstruct
	public void init(){
		try{
			provinceList = provinceBO.getAllProvince();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ProvinceBO getProvinceBO() {
		return provinceBO;
	}

	public void setProvinceBO(ProvinceBO provinceBO) {
		this.provinceBO = provinceBO;
	}

	public List<Province> getProvinceList() {
		return provinceList;
	}

	public void setProvinceList(List<Province> provinceList) {
		this.provinceList = provinceList;
	}

}
