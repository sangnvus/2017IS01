package vn.co.cex.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.transaction.annotation.Transactional;

import vn.co.cex.bo.OperationFeeBO;
import vn.co.cex.dao.OperationFeeDAO;
import vn.co.cex.orm.GoodsType;
import vn.co.cex.orm.OperationFee;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class OperationFeeDAOImpl extends BaseDAOImpl implements OperationFeeDAO {
	@Transactional
	public List<OperationFee> getAllOperationFee() {
		// TODO Auto-generated method stub
		List<OperationFee> operationFees = new ArrayList<OperationFee>();
		
		Session session = getSessionFactory().getCurrentSession();
		Query query = session.createQuery(" from OperationFee");
		operationFees = query.list();
		return operationFees;
	
	}
	
	

}
