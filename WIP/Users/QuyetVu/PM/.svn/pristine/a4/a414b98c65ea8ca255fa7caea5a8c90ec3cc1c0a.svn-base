package vn.co.cex.bean;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;

import vn.co.cex.bo.OperationFeeBO;
import vn.co.cex.orm.GoodsType;
import vn.co.cex.orm.OperationFee;

@ManagedBean(name = "operationFeeBean", eager = true)
public class OperationFeeBean extends BaseBean{
	//DI via Spring
	@ManagedProperty(value = "#{operationFeeBO}")
	OperationFeeBO operationFeeBO;
	private List<OperationFee> operationFees;
	
	@PostConstruct
	public void init(){
		try{
			operationFees = operationFeeBO.getAllOperationFee();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private Integer id;
	private String feeName;
	private BigDecimal fee;
	private String note;
	
	public OperationFeeBean(){}
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFeeName() {
		return feeName;
	}

	public void setFeeName(String feeName) {
		this.feeName = feeName;
	}

	public BigDecimal getFee() {
		return fee;
	}

	public void setFee(BigDecimal fee) {
		this.fee = fee;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
	
	public OperationFeeBO getOperationFeeBO() {
		return operationFeeBO;
	}

	public void setOperationFeeBO(OperationFeeBO operationFeeBO) {
		this.operationFeeBO = operationFeeBO;
	}

	public List<OperationFee> getOperationFees() {
		return operationFees;
	}

	public void setOperationFees(List<OperationFee> operationFees) {
		this.operationFees = operationFees;
	}

}
