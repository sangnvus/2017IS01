package vn.co.cex.bo.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import vn.co.cex.bo.BaseBO;
import vn.co.cex.dao.AuctionTransactionsDAO;
import vn.co.cex.dao.CarierDAO;
import vn.co.cex.dao.DistrictDAO;
import vn.co.cex.dao.GoodsTypeDAO;
import vn.co.cex.dao.OperationFeeDAO;
import vn.co.cex.dao.PackagedFormDAO;
import vn.co.cex.dao.ProvinceDAO;
import vn.co.cex.dao.ReportDAO;
import vn.co.cex.dao.TransactionsDAO;
import vn.co.cex.dao.UsersDAO;

/**
 * @author QuyetVu
 *
 */
@Transactional
public class BaseBOImpl implements BaseBO {
	@Autowired
	protected CarierDAO carierDAO;

	@Autowired
	protected TransactionsDAO transactionsDAO;

	@Autowired
	protected GoodsTypeDAO goodsTypeDAO;

	@Autowired
	protected PackagedFormDAO packagedFormDAO;

	@Autowired
	protected ProvinceDAO provinceDAO;

	@Autowired
	protected DistrictDAO districtDAO;

	@Autowired
	protected OperationFeeDAO operationFeeDAO;

	@Autowired
	protected AuctionTransactionsDAO auctionTransactionsDAO;

	@Autowired
	protected ReportDAO reportDAO;

	@Autowired
	protected UsersDAO usersDAO;

	/**
	 * @return
	 */
	public UsersDAO getUsersDAO() {
		return usersDAO;
	}

	/**
	 * @param usersDAO
	 */
	public void setUsersDAO(UsersDAO usersDAO) {
		this.usersDAO = usersDAO;
	}

	/**
	 * @return the reportDAO
	 */
	public ReportDAO getReportDAO() {
		return reportDAO;
	}

	/**
	 * @param reportDAO
	 *            the reportDAO to set
	 */
	public void setReportDAO(ReportDAO reportDAO) {
		this.reportDAO = reportDAO;
	}

	/**
	 * @return
	 */
	public TransactionsDAO getTransactionsDAO() {
		return transactionsDAO;
	}

	/**
	 * @param transactionsDAO
	 */
	public void setTransactionsDAO(TransactionsDAO transactionsDAO) {
		this.transactionsDAO = transactionsDAO;
	}

	/**
	 * @return the carierDAO
	 */
	public CarierDAO getCarierDAO() {
		return carierDAO;
	}

	/**
	 * @param carierDAO
	 *            the carierDAO to set
	 */
	public void setCarierDAO(CarierDAO carierDAO) {
		this.carierDAO = carierDAO;
	}

	public GoodsTypeDAO getGoodsTypeDAO() {
		return goodsTypeDAO;
	}

	/**
	 * @param goodsTypeDAO
	 */
	public void setGoodsTypeDAO(GoodsTypeDAO goodsTypeDAO) {
		this.goodsTypeDAO = goodsTypeDAO;
	}

	/**
	 * @return
	 */
	public PackagedFormDAO getPackagedFormDAO() {
		return packagedFormDAO;
	}

	/**
	 * @param packagedFormDAO
	 */
	public void setPackagedFormDAO(PackagedFormDAO packagedFormDAO) {
		this.packagedFormDAO = packagedFormDAO;
	}

	/**
	 * @return
	 */
	public ProvinceDAO getProvinceDAO() {
		return provinceDAO;
	}

	/**
	 * @param provinceDAO
	 */
	public void setProvinceDAO(ProvinceDAO provinceDAO) {
		this.provinceDAO = provinceDAO;
	}

	/**
	 * @return
	 */
	public DistrictDAO getDistrictDAO() {
		return districtDAO;
	}

	/**
	 * @param districtDAO
	 */
	public void setDistrictDAO(DistrictDAO districtDAO) {
		this.districtDAO = districtDAO;
	}

	/**
	 * @return
	 */
	public OperationFeeDAO getOperationFeeDAO() {
		return operationFeeDAO;
	}

	/**
	 * @param operationFeeDAO
	 */
	public void setOperationFeeDAO(OperationFeeDAO operationFeeDAO) {
		this.operationFeeDAO = operationFeeDAO;
	}

	/**
	 * @return
	 */
	public AuctionTransactionsDAO getAuctionTransactionsDAO() {
		return auctionTransactionsDAO;
	}

	/**
	 * @param auctionTransactionsDAO
	 */
	public void setAuctionTransactionsDAO(AuctionTransactionsDAO auctionTransactionsDAO) {
		this.auctionTransactionsDAO = auctionTransactionsDAO;
	}

	public BaseBOImpl() {
		// TODO Auto-generated constructor stub
	}

}
