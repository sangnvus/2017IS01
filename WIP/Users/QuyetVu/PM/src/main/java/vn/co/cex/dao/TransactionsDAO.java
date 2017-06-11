
package vn.co.cex.dao;

import java.util.Date;
import java.util.List;

import vn.co.cex.dto.TransactionsDTO;
import vn.co.cex.orm.Transactions;

public interface TransactionsDAO extends BaseDAO {

	/**
	 * Get transactions list
	 * @return
	 */
	public List<Transactions> getAllTransaction();
	
	/**
	 * Add new transaction
	 * @param data
	 * @return
	 */
	public boolean addNewTransaction(Transactions data);
	
	/**
	 * Update transaction
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
	 * Search transaction by condition
	 * @param goodsTypeId
	 * @param packagedForm
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
