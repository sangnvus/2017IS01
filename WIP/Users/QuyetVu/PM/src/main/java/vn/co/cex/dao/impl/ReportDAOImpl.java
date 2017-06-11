package vn.co.cex.dao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.springframework.transaction.annotation.Transactional;

import vn.co.cex.dao.ReportDAO;
import vn.co.cex.dto.ReportDTO;
import vn.co.cex.dto.TransactionsDTO;
import vn.co.cex.orm.Report;

/**
 * @author TuanDL
 *
 */
public class ReportDAOImpl extends BaseDAOImpl implements ReportDAO {
	
	private static final Logger log = LogManager.getLogger(ReportDAOImpl.class);

	/**
	 * 
	 */
	private static final long serialVersionUID = 8665733281397292743L;

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Report> getAllReport() {
		List<Report> result = null;
		try {
			Session session = getSessionFactory().getCurrentSession();

			String sqlSelect = "select ur.Code as 'UserName', ur.FullName as 'FullName', rp.* "
					+ "from report rp join users ur on rp.UserId = ur.Id ";
			SQLQuery query = session.createSQLQuery(sqlSelect);
			query.setResultTransformer(new AliasToBeanResultTransformer(ReportDTO.class));
			result = query.list();
		} catch (Exception e) {
			log.debug(e);
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	public List<Report> searchReport(int id, int userId, Date reportDate, String reportTitle,
			String reportQuestion, String reportSolution, String reportContent, String reportReply, Boolean status) {
		
		List<Report> result = new ArrayList<Report>();
		
		try {
			StringBuilder sqlQueryString = new StringBuilder();
			
			Session session = getSessionFactory().getCurrentSession();
			SQLQuery query = session.createSQLQuery(sqlQueryString.toString());
			query.setResultTransformer(new AliasToBeanResultTransformer(TransactionsDTO.class));

			result = query.list();
		} catch (Exception e) {
			log.debug(e);
		}
		return result;
	}

	public ReportDTO getReportById(int id) {
		ReportDTO result = null;
		try{
			Session session = getSessionFactory().getCurrentSession();

			String sqlSelect = "";
			SQLQuery query = session.createSQLQuery(sqlSelect);
			query.setParameter(0, id);
			query.setResultTransformer(new AliasToBeanResultTransformer(ReportDTO.class));
			result = (ReportDTO) query.uniqueResult();
		}
		catch (Exception e) {
			log.debug(e);
		}
		return result;
	}
}
