package vn.co.cex.bo.impl;

import java.util.List;

import vn.co.cex.bo.DistrictBO;
import vn.co.cex.orm.District;

public class DistrictBOImpl extends BaseBOImpl implements DistrictBO {

	/**
	 * Get district list
	 */
	public List<District> getAllDistrict() {
		return districtDAO.getAllDistrict();
	}
	
	/**
	 * Get district by province code
	 */
	public List<District> getDistrictByProvinceCode(String provinceCode){
		return districtDAO.getDistrictByProvinceCode(provinceCode);
	}

}
