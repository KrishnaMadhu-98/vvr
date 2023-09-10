package com.framework.config;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SecurityConfig {

	@Value("${DBPATH}")
	private String dbPath;
	
	@Bean
	public DButility DButilityBean() throws IOException {
		DButility loadProperties = new DButility();
		loadProperties.dbUlitityPropLoad(dbPath);
		return loadProperties;
	}
}
