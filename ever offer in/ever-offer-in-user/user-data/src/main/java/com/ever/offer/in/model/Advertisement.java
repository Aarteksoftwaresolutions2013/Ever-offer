package com.ever.offer.in.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "advertisement")
public class Advertisement extends AbstractEntity {

	private String name;
	private City city;
	private String image;
	private String letitude;
	private String longitude;
	private Integer isApproved;

	@Column(name = "name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@OneToOne
	@JoinColumn(name = "city_id")
	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	@Column(name = "image")
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Column(name = "letitude", length = 55)
	public String getLetitude() {
		return letitude;
	}

	
	public void setLetitude(String letitude) {
		this.letitude = letitude;
	}

	@Column(name = "longitude", length = 55)
	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	@Column(name = "isApproved")
	public Integer getIsApproved() {
		return isApproved;
	}

	public void setIsApproved(Integer isApproved) {
		this.isApproved = isApproved;
	}

}
