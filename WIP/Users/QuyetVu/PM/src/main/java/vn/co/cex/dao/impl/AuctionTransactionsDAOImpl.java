package vn.co.cex.dao.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.transform.AliasToBeanResultTransformer;

import vn.co.cex.dao.AuctionTransactionsDAO;
import vn.co.cex.dto.TransactionsDTO;
import vn.co.cex.orm.AuctionTransactions;
import vn.co.cex.utils.ConstantUtils;

public class AuctionTransactionsDAOImpl extends BaseDAOImpl implements AuctionTransactionsDAO {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8470917989028494048L;
	/**
	 * 
	 */
	private static final Logger log = LogManager.getLogger(UsersDAOImpl.class);
	
	/**
	 * Add new auction transactions
	 */
	public boolean addNewAuctionTransaction(AuctionTransactions data) {
		try{
			Session session = getSessionFactory().getCurrentSession();
			session.save(data);
			return true;
		}
		catch (Exception e) {
			log.debug(e);
		}
		return false;
	}
	
	/**
	 * Update auction transactions
	 */
	public boolean updateAuctionTransactions(AuctionTransactions data){
		try{
			Session session = getSessionFactory().getCurrentSession();
			session.saveOrUpdate(data);
			return true;
		}
		catch (Exception e) {
			log.debug(e);
		}
		return false;
	}
	
	/**
	 * Get auction transactions
	 */
	public AuctionTransactions getAuctionTransactions(int carrierId, int transactionsId){
		AuctionTransactions result = null;
		try{
			Session session = getSessionFactory().getCurrentSession();
			StringBuilder sqlSelect = new StringBuilder();
			sqlSelect.append(" select auct_trans.* from auctiontransactions auct_trans ");
			sqlSelect.append(" join transactions trans on auct_trans.TransactionId = trans.Id ");
			sqlSelect.append(" where auct_trans.CarrierId = ? and trans.Id = ? and auct_trans.Status <> ?");
			SQLQuery query = session.createSQLQuery(sqlSelect.toString());
			query.setResultTransformer(new AliasToBeanResultTransformer(AuctionTransactions.class));
			query.setParameter(0, carrierId);
			query.setParameter(1, transactionsId);
			query.setParameter(2, ConstantUtils.AUCTION_HUY_DAU_GIA);
			//result = (AuctionTransactions) query.uniqueResult();
			List<AuctionTransactions> tmp = query.list();
			result = tmp.get(0);
		}
		catch (Exception e) {
			log.debug(e);
		}
		return result;
	}

	/**
	 * 
	 */
	public List<AuctionTransactions> getAuctionsTransactionsList(int transactionsId) {
		List<AuctionTransactions> result = null;
		try{
			Session session = getSessionFactory().getCurrentSession();
			String sqlSelect = "select * from auctiontransactions where TransactionId = ?";
			SQLQuery query = session.createSQLQuery(sqlSelect.toString());
			query.setResultTransformer(new AliasToBeanResultTransformer(AuctionTransactions.class));
			query.setParameter(0, transactionsId);
			result = query.list();
		}
		catch (Exception e) {
			log.debug(e);
		}
		return result;
	}

	/**
	 * 
	 */
	public AuctionTransactions getAuctionTransactionsSuccess(int transactionsId) {
		AuctionTransactions result = null;
		try{
			Session session = getSessionFactory().getCurrentSession();
			String sqlSelect = "SELECT * FROM auctiontransactions WHERE TransactionId = ? AND Status = 1 LIMIT 5";
			SQLQuery query = session.createSQLQuery(sqlSelect.toString());
			query.setResultTransformer(new AliasToBeanResultTransformer(AuctionTransactions.class));
			query.setParameter(0, transactionsId);
			result = (AuctionTransactions) query.uniqueResult();
		}
		catch (Exception e) {
			log.debug(e);
		}
		return result;
	}
}
