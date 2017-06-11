package vn.co.cex.bean.transaction;


import java.util.Date;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import vn.co.cex.bo.AuctionTransactionsBO;
import vn.co.cex.orm.AuctionTransactions;

@ManagedBean(name = "auctionTransactionsBean", eager = true)
public class AuctionTransactionsBean {
	@ManagedProperty(value = "#{auctionTransactionsBO}")
	private AuctionTransactionsBO auctionTransactionsBO;
	
	private float auctionPrice;
	private int auctionStatus = 1;

	public AuctionTransactionsBO getAuctionTransactionsBO() {
		return auctionTransactionsBO;
	}

	public void setAuctionTransactionsBO(AuctionTransactionsBO auctionTransactionsBO) {
		this.auctionTransactionsBO = auctionTransactionsBO;
	}

	public float getAuctionPrice() {
		return auctionPrice;
	}

	public void setAuctionPrice(float auctionPrice) {
		this.auctionPrice = auctionPrice;
	}
	
	public int getAuctionStatus() {
		return auctionStatus;
	}

	public void setAuctionStatus(int auctionStatus) {
		this.auctionStatus = auctionStatus;
	}

	/**
	 * 
	 * @param transactionsId
	 */
	public void auction(int transactionsId) {
		//Get userLogin from session
		Date auctionDate = new Date();
		AuctionTransactions data = new AuctionTransactions();
		//Set Carrier id /Id of userLogin
		data.setCarrierId(3);
		data.setTransactionId(transactionsId);
		data.setAuctionPrice(auctionPrice);
		data.setAuctionDate(auctionDate);
		boolean result = auctionTransactionsBO.addNewAuctionTransaction(data);
		if(result){
			auctionStatus = 2;
		}
		else{
			auctionStatus = 1;
		}
	}
}
