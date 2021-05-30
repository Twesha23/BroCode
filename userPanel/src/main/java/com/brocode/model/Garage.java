package com.brocode.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;


@Entity
@Table(name="garage")
public class Garage {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long garageId;
	
	private String garageName;
	private String garagePicture;
	private double minCharges;

	private String address;
	private long areaId;
	private Date createdDate;
	private Date modifiedDate;
	private int isDeleted;
	private int isActive;
	private String description;
	private String status;
	private int isAvailable;
	
	
	@Transient
	private long cityId;
	
	@Transient
	private long stateId;
	
	
	
	@Transient
	private MultipartFile garageImage; 
	
	
	@Transient
	private String stateName;
	@Transient
	private String cityName;
	@Transient
	private String areaName;
	
	
	@Transient
	private String minChargesFilter;


	public long getGarageId() {
		return garageId;
	}


	public void setGarageId(long garageId) {
		this.garageId = garageId;
	}


	public String getGarageName() {
		return garageName;
	}


	public void setGarageName(String garageName) {
		this.garageName = garageName;
	}


	public String getGaragePicture() {
		return garagePicture;
	}


	public void setGaragePicture(String garagePicture) {
		this.garagePicture = garagePicture;
	}


	public double getMinCharges() {
		return minCharges;
	}


	public void setMinCharges(double minCharges) {
		this.minCharges = minCharges;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public long getAreaId() {
		return areaId;
	}


	public void setAreaId(long areaId) {
		this.areaId = areaId;
	}


	public Date getCreatedDate() {
		return createdDate;
	}


	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}


	public Date getModifiedDate() {
		return modifiedDate;
	}


	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}


	public int getIsDeleted() {
		return isDeleted;
	}


	public void setIsDeleted(int isDeleted) {
		this.isDeleted = isDeleted;
	}


	public int getIsActive() {
		return isActive;
	}


	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getIsAvailable() {
		return isAvailable;
	}


	public void setIsAvailable(int isAvailable) {
		this.isAvailable = isAvailable;
	}


	public long getCityId() {
		return cityId;
	}


	public void setCityId(long cityId) {
		this.cityId = cityId;
	}


	public long getStateId() {
		return stateId;
	}


	public void setStateId(long stateId) {
		this.stateId = stateId;
	}


	public MultipartFile getGarageImage() {
		return garageImage;
	}


	public void setGarageImage(MultipartFile garageImage) {
		this.garageImage = garageImage;
	}


	public String getStateName() {
		return stateName;
	}


	public void setStateName(String stateName) {
		this.stateName = stateName;
	}


	public String getCityName() {
		return cityName;
	}


	public void setCityName(String cityName) {
		this.cityName = cityName;
	}


	public String getAreaName() {
		return areaName;
	}


	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}


	public String getMinChargesFilter() {
		return minChargesFilter;
	}


	public void setMinChargesFilter(String minChargesFilter) {
		this.minChargesFilter = minChargesFilter;
	}
	
		
}