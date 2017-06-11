package vn.co.cex.bean.report;

import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

import vn.co.cex.bean.BaseBean;
import vn.co.cex.bo.ReportBO;
import vn.co.cex.dto.ReportDTO;

@SuppressWarnings("restriction")
@ManagedBean(name="reportDetailBean", eager=true)
@RequestScoped
public class ReportDetailBean extends BaseBean {
	@ManagedProperty(value = "#{reportBO}")
	private ReportBO reportBO;

	private ReportDTO data;

	@PostConstruct
	public void init() {
		try {
			FacesContext context = FacesContext.getCurrentInstance();
			ExternalContext extContext = context.getExternalContext();
			Map<String, String> params = extContext.getRequestParameterMap();
			String id = params.get("id");
			data = reportBO.getReportById(Integer.parseInt(id));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @return the reportBO
	 */
	public ReportBO getReportBO() {
		return reportBO;
	}

	/**
	 * @param reportBO the reportBO to set
	 */
	public void setReportBO(ReportBO reportBO) {
		this.reportBO = reportBO;
	}

	/**
	 * @return the data
	 */
	public ReportDTO getData() {
		return data;
	}

	/**
	 * @param data the data to set
	 */
	public void setData(ReportDTO data) {
		this.data = data;
	}
	
}


