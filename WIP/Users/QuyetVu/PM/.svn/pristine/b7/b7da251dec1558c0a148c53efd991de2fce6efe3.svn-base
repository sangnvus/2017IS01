package vn.co.cex.bean.report;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;

import vn.co.cex.bean.BaseBean;
import vn.co.cex.bo.ReportBO;
import vn.co.cex.orm.Report;

@SuppressWarnings("restriction")
@ManagedBean(name="reportBean", eager=true)
@RequestScoped
public class ReportBean extends BaseBean {
	
	@ManagedProperty(value = "#{reportBO}")
	private ReportBO reportBO;
	
	private List<Report> reportList;
	//private Report report;
	
	private Integer id;
	private Integer userId;
	private String reportDate;
	private String reportTitle;
	private String reportQuestion;
	private String reportSolution;
	private String reportContent;
	private String reportReply;
	private Boolean status;
	
	@PostConstruct
	public void init() {
		try {
			reportList = reportBO.getAllReport();
			//report = reportBO
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	public ReportBean() {
		
	}
	
	
	
	/**
	 * @return the reportQuestion
	 */
	public String getReportQuestion() {
		return reportQuestion;
	}


	/**
	 * @param reportQuestion the reportQuestion to set
	 */
	public void setReportQuestion(String reportQuestion) {
		this.reportQuestion = reportQuestion;
	}


	/**
	 * @return the reportSolution
	 */
	public String getReportSolution() {
		return reportSolution;
	}


	/**
	 * @param reportSolution the reportSolution to set
	 */
	public void setReportSolution(String reportSolution) {
		this.reportSolution = reportSolution;
	}


	/**
	 * @return the reportContent
	 */
	public String getReportContent() {
		return reportContent;
	}


	/**
	 * @param reportContent the reportContent to set
	 */
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}


	/**
	 * @return the reportReply
	 */
	public String getReportReply() {
		return reportReply;
	}


	/**
	 * @param reportReply the reportReply to set
	 */
	public void setReportReply(String reportReply) {
		this.reportReply = reportReply;
	}


	public ReportBO getReportBO() {
		return reportBO;
	}
	public void setReportBO(ReportBO reportBO) {
		this.reportBO = reportBO;
	}
	public List<Report> getReportList() {
		return reportList;
	}
	public void setReportList(List<Report> reportList) {
		this.reportList = reportList;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getReportDate() {
		return reportDate;
	}
	public void setReportDate(String reportDate) {
		this.reportDate = reportDate;
	}
	public String getReportTitle() {
		return reportTitle;
	}
	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}

	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
}


