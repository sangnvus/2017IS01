package vn.co.cex.bo.impl;

import java.util.Date;
import java.util.List;

import vn.co.cex.bo.ReportBO;
import vn.co.cex.dto.ReportDTO;
import vn.co.cex.orm.Report;

public class ReportBOImpl extends BaseBOImpl implements ReportBO {

	public List<Report> getAllReport() {
		return reportDAO.getAllReport();
	}

	public List<Report> searchReport(int id, int userId, Date reportDate, String reportTitle,
			String reportQuestion, String reportSolution, String reportContent, String reportReply, Boolean status) {
		return reportDAO.searchReport(id, userId, reportDate, reportTitle, 
				reportQuestion, reportSolution, reportContent, reportReply, status);
	}

	public ReportDTO getReportById(int id) {
		return reportDAO.getReportById(id);
	}
}
