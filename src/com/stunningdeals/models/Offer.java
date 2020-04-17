package com.stunningdeals.models;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;

public class Offer implements Serializable{

	String email;
    String offerName;
    Date offerValidFrom;
    Date offerValidTo;
    String offer;
    String offerSummary;
    String offerBanner;
    String companyLogo;
    
	@Override
	public String toString() {
		return "Offer [email=" + email + ", offerName=" + offerName + ", offerValidFrom=" + offerValidFrom
				+ ", offerValidTo=" + offerValidTo + ", offer=" + offer + ", offerSummary=" + offerSummary
				+ ", offerBanner=" + offerBanner + ", companyLogo=" + companyLogo + "]";
	}
	
	public String getCompanyLogo() {
		return companyLogo;
	}
	public void setCompanyLogo(String companyLogo) {
		this.companyLogo = companyLogo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOfferName() {
		return offerName;
	}
	public void setOfferName(String offerName) {
		this.offerName = offerName;
	}
	public Date getOfferValidFrom() {
		return offerValidFrom;
	}
	public void setOfferValidFrom(Date offerValidFrom) {
		this.offerValidFrom = offerValidFrom;
	}
	public Date getOfferValidTo() {
		return offerValidTo;
	}
	public void setOfferValidTo(Date offerValidTo) {
		this.offerValidTo = offerValidTo;
	}
	public String getOffer() {
		return offer;
	}
	public void setOffer(String offer) {
		this.offer = offer;
	}
	public String getOfferSummary() {
		return offerSummary;
	}
	public void setOfferSummary(String offerSummary) {
		this.offerSummary = offerSummary;
	}
	public String getOfferBanner() {
		return offerBanner;
	}
	public void setOfferBanner(String offerBanner) {
		this.offerBanner = offerBanner;
	}
	
}
