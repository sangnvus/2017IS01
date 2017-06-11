package vn.co.cex.bean;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import vn.co.cex.bo.DistrictBO;
import vn.co.cex.orm.District;

@SuppressWarnings("restriction")
@ManagedBean(name = "districtBean", eager = true)
public class DistrictBean extends BaseBean {

	@ManagedProperty(value = "#{districtBO}")
	private DistrictBO districtBO;

	private List<District> districtList;

	// /**
	// * Init data districtList
	// */
	// @PostConstruct
	// public void init(){
	// try{
	// districtList = districtBO.getAllDistrict();
	// }
	// catch (Exception e) {
	// e.printStackTrace();
	// }
	// }

	public DistrictBO getDistrictBO() {
		return districtBO;
	}

	public void setDistrictBO(DistrictBO districtBO) {
		this.districtBO = districtBO;
	}

	public List<District> getDistrictList() {
		return districtList;
	}

	public void setDistrictList(List<District> districtList) {
		this.districtList = districtList;
	}

	/**
	 * Get district by province code
	 */
	public List<District> getDistrictByProvinceCode(String provinceCode) {
		districtList = districtBO.getDistrictByProvinceCode(provinceCode);
		return districtList;
	}
}
