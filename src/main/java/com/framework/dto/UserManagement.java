package com.framework.dto;

import java.io.Serializable;
import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.framework.common.Constants;

@Entity
@Table(name = Constants.DEFAULTSCHEMA
		+ "t_admin_menus", uniqueConstraints = @UniqueConstraint(columnNames = { "v_um_username" }))
public class UserManagement implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "v_um_user_id", unique = true, nullable = false)
	private String v_um_user_id;

	@Column(name = "v_um_username")
	private String v_userName;

	@Column(name = "n_um_roleid")
	private Integer n_um_roleid;

	@Column(name = "v_um_active_status")
	private String v_um_active_status;

	@Column(name = "v_um_email")
	private String v_um_email;

	@Column(name = "v_um_password")
	private String v_um_password;

	@Column(name = "t_um_password_modified_time")
	private Timestamp t_um_password_modified_time;

	@Column(name = "v_um_created_by")
	private String v_um_created_by;

	@Column(name = "t_um_created_at")
	private Timestamp t_um_created_at;

	@Column(name = "v_um_updated_by")
	private String v_um_updated_by;

	@Column(name = "t_um_updated_at")
	private Timestamp t_um_updated_at;

	@Column(name = "t_um_last_login_time")
	private Timestamp t_um_last_login_time;

	@Column(name = "v_um_account_type")
	private String v_um_account_type;

	@Column(name = "v_um_active_flag")
	private String v_um_active_flag;

	@Column(name = "v_um_firstname")
	private String v_um_firstname;

	@Column(name = "v_um_lastname")
	private String v_um_lastname;

	public String getV_um_user_id() {
		return v_um_user_id;
	}

	public void setV_um_user_id(String v_um_user_id) {
		this.v_um_user_id = v_um_user_id;
	}

	public String getV_userName() {
		return v_userName;
	}

	public void setV_userName(String v_userName) {
		this.v_userName = v_userName;
	}

	public Integer getN_um_roleid() {
		return n_um_roleid;
	}

	public void setN_um_roleid(Integer n_um_roleid) {
		this.n_um_roleid = n_um_roleid;
	}

	public String getV_um_active_status() {
		return v_um_active_status;
	}

	public void setV_um_active_status(String v_um_active_status) {
		this.v_um_active_status = v_um_active_status;
	}

	public String getV_um_email() {
		return v_um_email;
	}

	public void setV_um_email(String v_um_email) {
		this.v_um_email = v_um_email;
	}

	public String getV_um_password() {
		return v_um_password;
	}

	public void setV_um_password(String v_um_password) {
		this.v_um_password = v_um_password;
	}

	public Timestamp getT_um_password_modified_time() {
		return t_um_password_modified_time;
	}

	public void setT_um_password_modified_time(Timestamp t_um_password_modified_time) {
		this.t_um_password_modified_time = t_um_password_modified_time;
	}

	public String getV_um_created_by() {
		return v_um_created_by;
	}

	public void setV_um_created_by(String v_um_created_by) {
		this.v_um_created_by = v_um_created_by;
	}

	public Timestamp getT_um_created_at() {
		return t_um_created_at;
	}

	public void setT_um_created_at(Timestamp t_um_created_at) {
		this.t_um_created_at = t_um_created_at;
	}

	public String getV_um_updated_by() {
		return v_um_updated_by;
	}

	public void setV_um_updated_by(String v_um_updated_by) {
		this.v_um_updated_by = v_um_updated_by;
	}

	public Timestamp getT_um_updated_at() {
		return t_um_updated_at;
	}

	public void setT_um_updated_at(Timestamp t_um_updated_at) {
		this.t_um_updated_at = t_um_updated_at;
	}

	public Timestamp getT_um_last_login_time() {
		return t_um_last_login_time;
	}

	public void setT_um_last_login_time(Timestamp t_um_last_login_time) {
		this.t_um_last_login_time = t_um_last_login_time;
	}

	public String getV_um_account_type() {
		return v_um_account_type;
	}

	public void setV_um_account_type(String v_um_account_type) {
		this.v_um_account_type = v_um_account_type;
	}

	public String getV_um_active_flag() {
		return v_um_active_flag;
	}

	public void setV_um_active_flag(String v_um_active_flag) {
		this.v_um_active_flag = v_um_active_flag;
	}

	public String getV_um_firstname() {
		return v_um_firstname;
	}

	public void setV_um_firstname(String v_um_firstname) {
		this.v_um_firstname = v_um_firstname;
	}

	public String getV_um_lastname() {
		return v_um_lastname;
	}

	public void setV_um_lastname(String v_um_lastname) {
		this.v_um_lastname = v_um_lastname;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	

}