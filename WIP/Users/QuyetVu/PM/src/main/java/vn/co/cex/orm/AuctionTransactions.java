package vn.co.cex.orm;

import java.util.Date;

public class AuctionTransactions implements java.io.Serializable {

	private int id;
	private int transactionId;
	private int carrierId;
	private Date auctionDate;
	private float auctionPrice;
	private int status;
	private String note;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	public int getCarrierId() {
		return carrierId;
	}
	public void setCarrierId(int carrierId) {
		this.carrierId = carrierId;
	}
	public Date getAuctionDate() {
		return auctionDate;
	}
	public void setAuctionDate(Date auctionDate) {
		this.auctionDate = auctionDate;
	}
	public float getAuctionPrice() {
		return auctionPrice;
	}
	public void setAuctionPrice(float auctionPrice) {
		this.auctionPrice = auctionPrice;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
}
