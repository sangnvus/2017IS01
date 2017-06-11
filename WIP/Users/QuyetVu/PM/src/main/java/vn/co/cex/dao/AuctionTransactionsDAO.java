package vn.co.cex.dao;

import java.util.List;

import vn.co.cex.orm.AuctionTransactions;

public interface AuctionTransactionsDAO extends BaseDAO {
	
	/**
	 * Add new auction transactions
	 * @param data
	 * @return
	 */
	public boolean addNewAuctionTransaction(AuctionTransactions data);
	
	/**
	 * Update auction transaction
	 * @param data
	 * @return
	 */
	public boolean updateAuctionTransactions(AuctionTransactions data);
	
	/**
	 * 
	 * @param carrierId
	 * @param transactionsId
	 * @return
	 */
	public AuctionTransactions getAuctionTransactions(int carrierId, int transactionsId);
	
	/**
	 * 
	 * @param transactionId
	 * @return
	 */
	public List<AuctionTransactions> getAuctionsTransactionsList(int transactionsId);
	
	/**
	 * 
	 * @param transactionId
	 * @return
	 */
	public AuctionTransactions getAuctionTransactionsSuccess(int transactionsId);
}
