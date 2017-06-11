package vn.co.cex.bean.transaction;

import java.util.Date;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.ViewScoped;

import vn.co.cex.bean.BaseBean;
import vn.co.cex.bo.TransactionsBO;
import vn.co.cex.orm.GoodsType;
import vn.co.cex.orm.PackagedForm;
import vn.co.cex.orm.Transactions;

@ManagedBean(name = "postTransactionBean", eager = true)
@ViewScoped
public class PostTransactionBean extends BaseBean {

	@ManagedProperty(value = "#{transactionsBO}")
	private TransactionsBO transactionsBO;
	
	private Integer goodsTypeId;
	private GoodsType goodsType;
	private Integer packagedFormId;
	private PackagedForm packagedForm;
	private String goodsImage;
	private Float weight;
	private Integer quantity;
	private Float length;
	private Float width;
	private Float height;
	private String description;
	private Boolean isFrozen;
	private Boolean isFragile;

	private String departureProvince;
	private String departureDistrict;
	private String departureAddress;
	private String departureCharacteristicPlace;
	private Date departureDate;

	private String arrivalProvince;
	private String arrivalDistrict;
	private String arrivalAddress;
	private String arrivalCharacteristicPlace;
	private Date arrivalDate;

	private Float distance;
	private Float price;
	private Date auctionPeriod;
	
	public Integer getGoodsTypeId() {
		return goodsTypeId;
	}

	public void setGoodsTypeId(Integer goodsTypeId) {
		this.goodsTypeId = goodsTypeId;
	}

	public GoodsType getGoodsType() {
		return goodsType;
	}

	public void setGoodsType(GoodsType goodsType) {
		this.goodsType = goodsType;
	}

	public Integer getPackagedFormId() {
		return packagedFormId;
	}

	public void setPackagedFormId(Integer packagedFormId) {
		this.packagedFormId = packagedFormId;
	}

	public PackagedForm getPackagedForm() {
		return packagedForm;
	}

	public void setPackagedForm(PackagedForm packagedForm) {
		this.packagedForm = packagedForm;
	}

	public String getGoodsImage() {
		return goodsImage;
	}

	public void setGoodsImage(String goodsImage) {
		this.goodsImage = goodsImage;
	}

	public Float getWeight() {
		return weight;
	}

	public void setWeight(Float weight) {
		this.weight = weight;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Float getLength() {
		return length;
	}

	public void setLength(Float length) {
		this.length = length;
	}

	public Float getWidth() {
		return width;
	}

	public void setWidth(Float width) {
		this.width = width;
	}

	public Float getHeight() {
		return height;
	}

	public void setHeight(Float height) {
		this.height = height;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Boolean getIsFrozen() {
		return isFrozen;
	}

	public void setIsFrozen(Boolean isFrozen) {
		this.isFrozen = isFrozen;
	}

	public Boolean getIsFragile() {
		return isFragile;
	}

	public void setIsFragile(Boolean isFragile) {
		this.isFragile = isFragile;
	}

	public String getDepartureProvince() {
		return departureProvince;
	}

	public void setDepartureProvince(String departureProvince) {
		this.departureProvince = departureProvince;
	}

	public String getDepartureDistrict() {
		return departureDistrict;
	}

	public void setDepartureDistrict(String departureDistrict) {
		this.departureDistrict = departureDistrict;
	}

	public String getDepartureAddress() {
		return departureAddress;
	}

	public void setDepartureAddress(String departureAddress) {
		this.departureAddress = departureAddress;
	}

	public String getDepartureCharacteristicPlace() {
		return departureCharacteristicPlace;
	}

	public void setDepartureCharacteristicPlace(String departureCharacteristicPlace) {
		this.departureCharacteristicPlace = departureCharacteristicPlace;
	}

	public Date getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(Date departureDate) {
		this.departureDate = departureDate;
	}

	public String getArrivalProvince() {
		return arrivalProvince;
	}

	public void setArrivalProvince(String arrivalProvince) {
		this.arrivalProvince = arrivalProvince;
	}

	public String getArrivalDistrict() {
		return arrivalDistrict;
	}

	public void setArrivalDistrict(String arrivalDistrict) {
		this.arrivalDistrict = arrivalDistrict;
	}

	public String getArrivalAddress() {
		return arrivalAddress;
	}

	public void setArrivalAddress(String arrivalAddress) {
		this.arrivalAddress = arrivalAddress;
	}

	public String getArrivalCharacteristicPlace() {
		return arrivalCharacteristicPlace;
	}

	public void setArrivalCharacteristicPlace(String arrivalCharacteristicPlace) {
		this.arrivalCharacteristicPlace = arrivalCharacteristicPlace;
	}

	public Date getArrivalDate() {
		return arrivalDate;
	}

	public void setArrivalDate(Date arrivalDate) {
		this.arrivalDate = arrivalDate;
	}

	public Float getDistance() {
		return distance;
	}

	public void setDistance(Float distance) {
		this.distance = distance;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Date getAuctionPeriod() {
		return auctionPeriod;
	}

	public void setAuctionPeriod(Date auctionPeriod) {
		this.auctionPeriod = auctionPeriod;
	}

	public TransactionsBO getTransactionsBO() {
		return transactionsBO;
	}

	public void setTransactionsBO(TransactionsBO transactionsBO) {
		this.transactionsBO = transactionsBO;
	}

	
	public boolean postTransactions() {
		
		Date addedDate = new Date();
		int STATUS_TRANSACTION = 1;
		float volume = length*width*height;

		Transactions data = new Transactions("", goodsTypeId, null, packagedFormId,
				null, "", weight, volume, quantity, length,
				width, height, description, isFrozen, isFragile,
				departureProvince, departureDistrict, departureAddress,
				departureCharacteristicPlace, departureDate, arrivalProvince, arrivalDistrict,
				arrivalAddress, arrivalCharacteristicPlace, arrivalDate, distance, price,
				auctionPeriod, STATUS_TRANSACTION, 3, addedDate);
		
		boolean result = transactionsBO.addNewTransaction(data);

		return result;
	}
}
