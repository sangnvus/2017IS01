package vn.co.cex.bo.impl;

import java.util.List;

import vn.co.cex.bo.AuctionTransactionsBO;
import vn.co.cex.orm.AuctionTransactions;

public class AuctionTransactionsBOImpl extends BaseBOImpl implements AuctionTransactionsBO {

	/**
	 * Add new auction transactions
	 */
	public boolean addNewAuctionTransaction(AuctionTransactions data) {
		return auctionTransactionsDAO.addNewAuctionTransaction(data);
	}

	/**
	 * Update auction transactions
	 */
	public boolean updateAuctionTransactions(AuctionTransactions data) {
		return auctionTransactionsDAO.updateAuctionTransactions(data);
	}

	/**
	 * Get auction transactions
	 */
	public AuctionTransactions getAuctionTransactions(int carrierId, int transactionsId) {
		return auctionTransactionsDAO.getAuctionTransactions(carrierId, transactionsId);
	}

	/**
	 * 
	 */
	public List<AuctionTransactions> getAuctionsTransactionsList(int transactionsId) {
		return auctionTransactionsDAO.getAuctionsTransactionsList(transactionsId);
	}

	/**
	 * 
	 */
	public AuctionTransactions getAuctionTransactionsSuccess(int transactionsId) {
		return auctionTransactionsDAO.getAuctionTransactionsSuccess(transactionsId);
	}
	

}
