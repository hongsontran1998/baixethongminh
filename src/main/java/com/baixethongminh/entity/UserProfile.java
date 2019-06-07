package com.baixethongminh.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "users")
public class UserProfile {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@NotBlank(message = "Không được rỗng")
	private String username;
	private String password;
	@NotBlank(message = "Không được rỗng")
	private String fullname;
	@NotNull(message = "Không được rỗng")
	private Integer total;

	@NotBlank(message = "Không được rỗng")
	private String cardId;

	public String getCardId() {
		return cardId;
	}

	public void setCardId(String cardId) {
		this.cardId = cardId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public UserProfile(Integer id, String username, String password, String fullname) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
	}

	public UserProfile(Integer id, String username, String password, String fullname, String cardId) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.cardId = cardId;
	}

	public UserProfile() {
		super();
	}

	public UserProfile(Integer id, String username, String password, String fullname, Integer total, String cardId) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.total = total;
		this.cardId = cardId;
	}

	@Override
	public String toString() {
		return "UserProfile [id=" + id + ", username=" + username + ", password=" + password + ", fullname=" + fullname
				+ ", total=" + total + ", cardId=" + cardId + "]";
	}

}
