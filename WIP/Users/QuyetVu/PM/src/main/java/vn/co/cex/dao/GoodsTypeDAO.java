package vn.co.cex.dao;

import java.util.List;

import vn.co.cex.orm.GoodsType;

public interface GoodsTypeDAO {
	/**
	 * Get goods type list
	 * @return
	 */
	public List<GoodsType> getAllGoodsType();
	/**
	 * Get goods type by id
	 * @param id
	 * @return
	 */
	public GoodsType getGoodsType(int id);
}
