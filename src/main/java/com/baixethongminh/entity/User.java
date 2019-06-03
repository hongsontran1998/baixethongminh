package com.baixethongminh.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@NotBlank(message = "Không được rỗng")
	private String username;
	// @NotBlank(message = "Không được rỗng")
	private String password;
	@NotBlank(message = "Không được rỗng")
	private String fullname;
	@NotBlank(message = "Không được rỗng")
	private String cardId;
	@NotNull(message = "Không được rỗng")
	private Integer enable;
	@NotNull(message = "Không được rỗng")
	private Integer total;
	/*
	 * @NotBlank(message = "Không được rỗng")
	 * 
	 * @Email
	 */
	private String email;
	/*
	 * @NotBlank(message = "Không được rỗng")
	 * 
	 * @Pattern(regexp = "[\\d]{6}", message = "Nhập số điện thoại")
	 */
	private String telephone;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "roleId")
	private Role role;

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

	public String getCardId() {
		return cardId;
	}

	public void setCardId(String cardId) {
		this.cardId = cardId;
	}

	public Integer getEnable() {
		return enable;
	}

	public void setEnable(Integer enable) {
		this.enable = enable;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public User(Integer id, String username, String password, String fullname, String cardId, Integer enable,
			Integer total) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.cardId = cardId;
		this.enable = enable;
		this.total = total;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public User(Integer id, String username, String password, String fullname, String cardId, Integer enable,
			Integer total, Role role) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.cardId = cardId;
		this.enable = enable;
		this.total = total;
		this.role = role;
	}

	public User() {
		super();
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", fullname=" + fullname
				+ ", cardId=" + cardId + ", enable=" + enable + ", total=" + total + ", role=" + role + "]";
	}

}
