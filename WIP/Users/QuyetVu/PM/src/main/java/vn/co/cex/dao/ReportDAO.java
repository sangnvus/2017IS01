package vn.co.cex.dao;

import java.util.Date;
import java.util.List;

import vn.co.cex.dto.ReportDTO;
import vn.co.cex.orm.Report;

public interface ReportDAO {

	public List<Report> getAllReport();

	/**
	 * 
	 * @param id
	 * @param userId
	 * @param reportDate
	 * @param reportTitle
	 * @param reportQuestion
	 * @param reportSolution
	 * @param reportContent
	 * @param reportReply
	 * @param status
	 * @return
	 */
	public List<Report> searchReport(int id, int userId, 
			Date reportDate, String reportTitle, String reportQuestion, String reportSolution,
			String reportContent, String reportReply, Boolean status);

	public ReportDTO getReportById(int id);
}
