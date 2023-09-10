package com.framework.dao.impl;

import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

import com.framework.bean.BookingInfoBean;
import com.framework.bean.BookingListResEntity;
import com.framework.dto.UserManagement;
import com.framework.form.BookingInfoForm;
import com.framework.form.LoginForm;
import com.framework.utils.DateUtil;
import com.framework.utils.MD5Encryption;

import org.apache.commons.lang3.StringUtils;

@Component
public class UsersDaoImpl {

		@Autowired
		NamedParameterJdbcTemplate namedParameterJdbcTemplate;

		@Autowired
		JdbcTemplate jdbcTemplate;

		public UserManagement getUserDetails(LoginForm loginForm) throws Exception {
			try {
				UserManagement userObj = null;
				String md5Password = MD5Encryption.hashPassword(loginForm.getPassword());
				StringBuilder strQry = new StringBuilder();
				strQry.append("SELECT v_um_user_id, v_um_username, n_um_roleid, v_um_active_status, v_um_email, v_um_password, t_um_password_modified_time, v_um_created_by, t_um_created_at, v_um_updated_by, t_um_updated_at, t_um_last_login_time, v_um_account_type, v_um_active_flag, n_um_employee_id, v_um_authentication_server, v_um_cardpin, v_um_firstname, v_um_lastname, n_um_contact_number " + 
						"FROM adminuser.user_management where v_um_username = :email and v_um_password = :password  and v_um_active_status = 'Active'");

				MapSqlParameterSource parameters = new MapSqlParameterSource();
				parameters.addValue("email", loginForm.getUserName());
				parameters.addValue("password", md5Password);
				List<UserManagement> userRes = namedParameterJdbcTemplate.query(strQry.toString(), parameters,
						new BeanPropertyRowMapper<UserManagement>(UserManagement.class));
				if (!CollectionUtils.isEmpty(userRes)) {
					userObj = userRes.get(0);
						}
				return userObj;
			} catch (Exception e) {
				e.printStackTrace();
				throw e;
			}
		}
		
		@SuppressWarnings("unchecked")
		public BookingListResEntity getRecentBooking(BookingInfoForm filingSearch) throws Exception {
			StringBuffer queryString = new StringBuffer();
			StringBuffer countQuery = new StringBuffer();
			StringBuffer limit = new StringBuffer("");
			BookingListResEntity filingResEntity = new BookingListResEntity();
			try {

				StringBuffer columnQuery = new StringBuffer("tbi.id, first_name ,last_name ,email ,phone, to_char(tu.created_date, 'MM/DD/YYYY') as createdDate ,to_char(tbi.selected_from_date, 'MM/DD/YYYY') as fromDate ,to_char(tbi.selected_to_date, 'MM/DD/YYYY') as toDate ,tut.total_amount ,tut.paid_amount ,tut.bal_amount");
				

				StringBuffer tableQuery = new StringBuffer(
						" from hotelsystem.tt_booking_info tbi join hotelsystem.tt_user tu  on(tu.booking_id =tbi.id) join hotelsystem.tt_user_transaction tut on (tbi.id = tut.booking_id) " );




				StringBuffer whereClause = new StringBuffer(" where tbi.active =:active ");

				if (filingSearch.getSearchColumnName() != null) {
					if (filingSearch.getSearchColumnName().equalsIgnoreCase("email"))
						whereClause.append(" and tu.email ilike :keyword ");
					
				}
				if (filingSearch.getFromDate() != "" && filingSearch.getFromDate() != null)
					whereClause.append(" and cast(tbi.selected_from_date as date) = :fromDate ");
				if (filingSearch.getToDate() != "" && filingSearch.getToDate() != null)
					whereClause.append(" and cast(tbi.selected_to_date as date) = :toDate ");
				
				
				
				
				MapSqlParameterSource parameters = new MapSqlParameterSource();

				parameters.addValue("active", true);
				String keyword = null;

				if (StringUtils.isNotEmpty(filingSearch.getSearchKeyword())) {
					keyword = filingSearch.getSearchKeyword();

					whereClause.append(" and (  tu.first_name =:keyword  or  tu.email LIKE '%" + keyword	+ "%' or tu.last_name  LIKE '%" + keyword + "%' )");

					parameters.addValue("keyword", keyword);
					/*
					 * keyword = filingSearch.isPartialSearch() ? "%" +
					 * filingSearch.getSearchKeyword() + "%" : filingSearch.getSearchKeyword();
					 */
				}
				

				
				if ((filingSearch.getSearchKeyword() == "" || filingSearch.getSearchKeyword() == null)
						&& (filingSearch.getFromDate() == "" || filingSearch.getFromDate() == null)) {
					/*limit.append("limit :limit offset :offSet");
				
				 * int limitVal = filingSearch.getLimit() == 0 ? 10 : filingSearch.getLimit();
				 * int offSetVal = (filingSearch.getOffSet() - 1) * limitVal;
				 * parameters.addValue("limit", limitVal); parameters.addValue("offSet",
				 * filingSearch.getOffSet() == 0 ? filingSearch.getOffSet() : offSetVal);
				 */
				}
				/*
				 * if (filingSearch.getSearchColumnName() != null)
				 * parameters.addValue("keyword", keyword);
				 */
				Date fromDate = null;
				Date toDate = null;
				if (StringUtils.isNotEmpty(filingSearch.getFromDate())
						) {
					fromDate = DateUtil.parseToSqlDate(filingSearch.getFromDate());
				}
				if (StringUtils.isNotEmpty(filingSearch.getToDate())) {
					toDate = DateUtil.parseToSqlDate(filingSearch.getToDate());
				} if (StringUtils.isEmpty(filingSearch.getFromDate())
						&& StringUtils.isEmpty(filingSearch.getToDate())) 
				 {
					fromDate = DateUtil.getCurrentDay();
					toDate = DateUtil.getCurrentDay();
				}
				parameters.addValue("fromDate", fromDate);
				parameters.addValue("toDate", toDate);
				countQuery.append("select count(distinct(tu.id)) ").append(tableQuery).append(whereClause);
				queryString.append("select ").append(columnQuery).append(tableQuery).append(whereClause)
						.append(" order by tu.created_date desc  ").append(limit); // limit :limit offset :offSet

				List<BookingInfoBean> filingList = namedParameterJdbcTemplate.query(queryString.toString(), parameters,
						new BeanPropertyRowMapper(BookingInfoBean.class));
				System.out.println("queryString : "+queryString);
				System.out.println(parameters.toString());
				System.out.println("countQuery : "+countQuery);
				int recordCount = namedParameterJdbcTemplate.queryForObject(countQuery.toString(), parameters,
						Integer.class);
				filingResEntity.setFilingList(filingList);
				filingResEntity.setRecordCount(recordCount);

				return filingResEntity;
			} catch (Exception e) {
				e.printStackTrace();
				throw e;
			}
		}
		 public String cancelBooking(long id) { 
			 
			  try {
					StringBuffer queryString = new StringBuffer(
							"UPDATE hotelsystem.tt_booking_info SET active = false WHERE id = ?");
						jdbcTemplate.update(queryString.toString(), new Object[] {id });
					return "deleted";
				} catch (Exception e) {
					throw e;
				}
		  }

	}


