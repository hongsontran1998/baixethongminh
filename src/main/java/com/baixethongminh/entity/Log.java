package com.baixethongminh.entity;


import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "logs")
public class Log {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Double cardNumber;
	private String name;
	private Double serialNumber;
	private Timestamp dateLog;
	private Timestamp timeIn;
	private Timestamp timeOut;
	private String userStat;

	public Log() {
		super();
	}

	public Log(Integer id, Double cardNumber, String name, Double serialNumber, Timestamp dateLog, Timestamp timeIn,
			Timestamp timeOut, String userStat) {
		super();
		this.id = id;
		this.cardNumber = cardNumber;
		this.name = name;
		this.serialNumber = serialNumber;
		this.dateLog = dateLog;
		this.timeIn = timeIn;
		this.timeOut = timeOut;
		this.userStat = userStat;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(Double cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getSerialNumber() {
		return serialNumber;
	}

	public void setSerialNumber(Double serialNumber) {
		this.serialNumber = serialNumber;
	}

	public Timestamp getDateLog() {
		return dateLog;
	}

	public void setDateLog(Timestamp dateLog) {
		this.dateLog = dateLog;
	}

	public Timestamp getTimeIn() {
		return timeIn;
	}

	public void setTimeIn(Timestamp timeIn) {
		this.timeIn = timeIn;
	}

	public Timestamp getTimeOut() {
		return timeOut;
	}

	public void setTimeOut(Timestamp timeOut) {
		this.timeOut = timeOut;
	}

	public String getUserStat() {
		return userStat;
	}

	public void setUserStat(String userStat) {
		this.userStat = userStat;
	}

	@Override
	public String toString() {
		return "Log [id=" + id + ", cardNumber=" + cardNumber + ", name=" + name + ", serialNumber=" + serialNumber
				+ ", dateLog=" + dateLog + ", timeIn=" + timeIn + ", timeOut=" + timeOut + ", userStat=" + userStat
				+ "]";
	}

}
