package vn.co.cex.dao;

import java.util.List;

import vn.co.cex.orm.OperationFee;

public interface OperationFeeDAO extends BaseDAO {
	List<OperationFee> getAllOperationFee();
}
