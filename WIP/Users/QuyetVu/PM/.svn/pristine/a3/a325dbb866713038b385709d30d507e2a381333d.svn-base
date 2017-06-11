package vn.co.cex.bean.transaction;

import java.util.Date;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletResponse;

import vn.co.cex.bean.BaseBean;
import vn.co.cex.bo.AuctionTransactionsBO;
import vn.co.cex.bo.TransactionsBO;
import vn.co.cex.dto.TransactionsDTO;
import vn.co.cex.orm.AuctionTransactions;
import vn.co.cex.orm.Transactions;
import vn.co.cex.orm.Users;
import vn.co.cex.utils.ConstantUtils;
import vn.co.cex.utils.SessionUtils;

@ManagedBean(name = "transactionDetailBean", eager = true)
@ViewScoped
public class TransactionDetailBean extends BaseBean {

	@ManagedProperty(value = "#{transactionsBO}")
	private TransactionsBO transactionsBO;

	@ManagedProperty(value = "#{auctionTransactionsBO}")
	private AuctionTransactionsBO auctionTransactionsBO;

	private TransactionsDTO data;
	private AuctionTransactions auctionData;
	private Users user;
	private float auctionPrice;
	private int auctionStatus;
	private int transactionsStatus;

	@PostConstruct
	public void init() {
		try {
			// Validate login
			user = SessionUtils.getUser();
			if (user == null) {

			}
			// Get transaction
			FacesContext context = FacesContext.getCurrentInstance();
			ExternalContext extContext = context.getExternalContext();
			Map<String, String> params = extContext.getRequestParameterMap();
			String id = params.get("id");
			data = transactionsBO.getTransactionsDTOById(Integer.parseInt(id));
			if (data == null) {
				// return home page
			}
			if (user.getRole() == 2) {
				auctionData = auctionTransactionsBO.getAuctionTransactionsSuccess(data.getId());
				if (data.getCreatedUserId() != user.getId()) {
					// Giao dich khong phai cua GoodsOwner
					transactionsStatus = ConstantUtils.GOODSOWNER_KHONG_PHAI_GIAO_DICH_CUA_GOODSOWNER;
				} else {
					// Trang thai cua giao dich
					transactionsStatus = data.getStatus();
				}
			} else if (user.getRole() == 3) {
				auctionData = auctionTransactionsBO.getAuctionTransactions(user.getId(), data.getId());
				auctionStatus = carrierStatus();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public TransactionsDTO getData() {
		return data;
	}

	public void setData(TransactionsDTO data) {
		this.data = data;
	}

	public TransactionsBO getTransactionsBO() {
		return transactionsBO;
	}

	public void setTransactionsBO(TransactionsBO transactionsBO) {
		this.transactionsBO = transactionsBO;
	}

	public void getDataTransaction(int id) {
		data = transactionsBO.getTransactionsDTOById(id);
	}

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

	public int getTransactionsStatus() {
		return transactionsStatus;
	}

	public void setTransactionsStatus(int transactionsStatus) {
		this.transactionsStatus = transactionsStatus;
	}

	public AuctionTransactions getAuctionData() {
		return auctionData;
	}

	public void setAuctionData(AuctionTransactions auctionData) {
		this.auctionData = auctionData;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	/**
	 * Carrier make auction
	 * 
	 * @param transactionsId
	 */
	public void auction(int transactionsId) {
		try {
			// Get userLogin from session
			Date auctionDate = new Date();
			AuctionTransactions data = new AuctionTransactions();
			// Set Carrier id /Id of userLogin
			data.setCarrierId(3);
			data.setTransactionId(transactionsId);
			data.setAuctionPrice(auctionPrice);
			data.setAuctionDate(auctionDate);
			data.setStatus(ConstantUtils.AUCTION_DANG_DAU_GIA);
			boolean result = auctionTransactionsBO.addNewAuctionTransaction(data);
			if (result) {
				auctionStatus = 2;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Goods owner cancel auction
	 */
	public void goodsOwnerCancelAuction() {
		try {
			Transactions updated = data.toTransactions();
			updated.setStatus(ConstantUtils.TRAN_GOODS_OWNER_HUY_GIAO_DICH);
			transactionsBO.updateTransactions(updated);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Carrier cancel auction
	 * 
	 * @param auctionId
	 */
	public void carrierCancelAuction() {
		if (auctionData.getStatus() == ConstantUtils.AUCTION_DANG_DAU_GIA) {
			// Update auction data
			auctionData.setStatus(ConstantUtils.AUCTION_HUY_DAU_GIA);
			auctionTransactionsBO.updateAuctionTransactions(auctionData);
			auctionStatus = ConstantUtils.CARRIER_CHUA_DAU_GIA;
		} else if (auctionData.getStatus() == ConstantUtils.AUCTION_DAU_GIA_THANH_CONG) {
			// Update transactions data
			Transactions updated = data.toTransactions();
			updated.setStatus(ConstantUtils.TRAN_CARRIER_HUY_GIAO_DICH);
			transactionsBO.updateTransactions(updated);
			auctionStatus = ConstantUtils.CARRIER_HUY_GIAO_DICH;
		}
	}

	/**
	 * 
	 * @return
	 */
	public int carrierStatus() {
		switch (data.getStatus()) {
		case ConstantUtils.TRAN_DANG_DAU_GIA:
			if (auctionData != null) {
				// Carrier dang dau gia
				auctionStatus = ConstantUtils.CARRIER_DANG_DAU_GIA;
			} else {
				// Carrier chua dau gia giao dich nay, co the thuc hien dau
				// gia
				auctionStatus = ConstantUtils.CARRIER_CHUA_DAU_GIA;
			}
			break;
		case ConstantUtils.TRAN_DAU_GIA_THANH_CONG:
			if (auctionData != null) {
				if (auctionData.getStatus() == 1) {
					// Carrier da dau gia thanh cong, co the HUY dau
					// gia.
					auctionStatus = ConstantUtils.CARRIER_DAU_GIA_THANH_CONG;
				} else { // status = 0
					// Carrier da dau gia that bai.
					auctionStatus = ConstantUtils.CARRIER_DAU_GIA_THAT_BAI;
				}
			} else {
				// Carrier khong dau gia giao dich nay.
				auctionStatus = ConstantUtils.CARRIER_KHONG_DAU_GIA_GIAO_DICH;
			}
			break;
		case ConstantUtils.TRAN_HOAN_TAT_GIAO_DICH:
			if (auctionData != null) {
				if (auctionData.getStatus() == 1) {
					// Carrier da hoan tat giao dich
					auctionStatus = ConstantUtils.CARRIER_HOAN_TAT_GIAO_DICH;
				} else { // status = 0
					// Carrier da dau gia that bai.
					auctionStatus = ConstantUtils.CARRIER_DAU_GIA_THAT_BAI;
				}
			} else {
				// Carrier khong dau gia giao dich nay.
				auctionStatus = ConstantUtils.CARRIER_KHONG_DAU_GIA_GIAO_DICH;
			}
			break;
		case ConstantUtils.TRAN_DAU_GIA_THAT_BAI:
			auctionStatus = ConstantUtils.CARRIER_KHONG_DAU_GIA_GIAO_DICH;
			break;
		case ConstantUtils.TRAN_GOODS_OWNER_HUY_GIAO_DICH:
			if (auctionData != null) {
				if (auctionData.getStatus() == 1) {
					// GoodsOwner da huy giao dich.
					auctionStatus = ConstantUtils.CARRIER_GOODSOWNER_HUY_GIAO_DICH;
				} else {// status = 0
					// Carrier dau gia that bai.
					auctionStatus = ConstantUtils.CARRIER_DAU_GIA_THAT_BAI;
				}
			} else {
				// Carrier khong dau gia giao dich nay
				auctionStatus = ConstantUtils.CARRIER_KHONG_DAU_GIA_GIAO_DICH;
			}
			break;

		case ConstantUtils.TRAN_CARRIER_HUY_GIAO_DICH:
			if (auctionData != null) {
				if (auctionData.getStatus() == 1) {
					// Carrier da huy giao dich.
					auctionStatus = ConstantUtils.CARRIER_HUY_GIAO_DICH;
				} else {// status = 0
					// Carrier dau gia that bai.
					auctionStatus = ConstantUtils.CARRIER_DAU_GIA_THAT_BAI;
				}
			} else {
				// Carrier khong dau gia giao dich nay
				auctionStatus = ConstantUtils.CARRIER_KHONG_DAU_GIA_GIAO_DICH;
			}
			break;
		}
		return auctionStatus;
	}
}
