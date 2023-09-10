package com.framework.config;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class DatabaseConfig {

	String[] dbProperties = new String[20];

	@Value("${DBPATH}")
	private String dbPath;

	@Value("${hibernate.dialect}")
	private String HIBERNATE_DIALECT;

	@Value("${hibernate.show_sql}")
	private String HIBERNATE_SHOW_SQL;

//	@Value("${entitymanager.packagesToScan}")
//	private String ENTITYMANAGER_PACKAGES_TO_SCAN;

	@Bean
	public DataSource dataSource() throws IOException {

		Properties configProp = new Properties();
		InputStream inPropFile = null;
		if (StringUtils.isNotBlank(dbPath)) {
			inPropFile = new FileInputStream(dbPath);
			configProp.load(inPropFile);
			inPropFile.close();
			if (StringUtils.isNotBlank(configProp.getProperty("url"))) {
				dbProperties[0] = configProp.getProperty("url");
			}
			if (StringUtils.isNotBlank(configProp.getProperty("username"))) {
				dbProperties[1] = configProp.getProperty("username");
			}
			if (StringUtils.isNotBlank(configProp.getProperty("password"))) {
				dbProperties[2] = configProp.getProperty("password");
			}

			if (StringUtils.isNotBlank(configProp.getProperty("driverClassName"))) {
				dbProperties[3] = configProp.getProperty("driverClassName");
			}
		}

		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(dbProperties[3]);
		dataSource.setUrl(dbProperties[0]);
		dataSource.setUsername(dbProperties[1]);
		dataSource.setPassword(dbProperties[2]);
		return dataSource;
	}

	/*
	 * @Bean public LocalSessionFactoryBean sessionFactory() throws IOException {
	 * LocalSessionFactoryBean sessionFactoryBean = new LocalSessionFactoryBean();
	 * sessionFactoryBean.setDataSource(dataSource());
	 * sessionFactoryBean.setPackagesToScan(ENTITYMANAGER_PACKAGES_TO_SCAN);
	 * Properties hibernateProps = new Properties();
	 * hibernateProps.put("hibernate.dialect", HIBERNATE_DIALECT);
	 * hibernateProps.put("hibernate.show_sql", HIBERNATE_SHOW_SQL);
	 * sessionFactoryBean.setHibernateProperties(hibernateProps); return
	 * sessionFactoryBean; }
	 */

	/*
	 * @Bean
	 * 
	 * @Autowired public HibernateTransactionManager transactionManager() throws
	 * IOException { HibernateTransactionManager transactionManager = new
	 * HibernateTransactionManager();
	 * transactionManager.setSessionFactory(sessionFactory().getObject()); return
	 * transactionManager; }
	 */

	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
//	    messageSource.setBasename("messages");
		return messageSource;
	}
}
