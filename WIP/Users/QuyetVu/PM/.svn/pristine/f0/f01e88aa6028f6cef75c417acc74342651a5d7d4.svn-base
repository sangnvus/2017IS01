package vn.co.cex.bo;

import java.util.Date;
import java.util.List;

import vn.co.cex.dto.TransactionsDTO;
import vn.co.cex.orm.Transactions;

public interface TransactionsBO extends BaseBO {
	
	/**
	 * Get transactions list
	 * @return
	 */
	List<Transactions> getAllTransaction();
	
	/**
	 * Add new transactions
	 * @return
	 */
	boolean addNewTransaction(Transactions data);
	
	/**
	 * Update transactions 
	 * @param data
	 * @return
	 */
	public boolean updateTransactions(Transactions data);
	
	/**
	 * Get transactions by id
	 * @param id
	 * @return
	 */
	public Transactions getTransactionsById(int id);
	
	/**
	 * Get transactions by id
	 * @param id
	 * @return
	 */
	public TransactionsDTO getTransactionsDTOById(int id);

	/**
	 * 
	 * @param goodsTypeId
	 * @param packagedFormId
	 * @param weight
	 * @param volume
	 * @param departureProvinceCode
	 * @param arrivalProvinceCode
	 * @param departureDate
	 * @param arrivalDate
	 * @return
	 */
	public List<Transactions> searchTransaction(int goodsTypeId, int packagedFormId, float weight, float volume,
			String departureProvinceCode, String arrivalProvinceCode, Date departureDate, Date arrivalDate);
}
