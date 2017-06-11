package vn.co.cex.bo.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import vn.co.cex.bo.GoodsTypeBO;
import vn.co.cex.orm.GoodsType;

public class GoodsTypeBOImpl extends BaseBOImpl implements GoodsTypeBO {
	private static final Logger log = LogManager.getLogger(TransactionsBOImpl.class);
	
	public List<GoodsType> getAllGoodsType() {
		// TODO Auto-generated method stub
		return goodsTypeDAO.getAllGoodsType();
	}
}
