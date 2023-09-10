package com.framework.config;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Properties;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class PropertyFileConfig {
	
	@Value("${DBPATH}")
	private String dbPath;

	public static HashMap<String, String> returnMap = new HashMap<String, String>();

	public static String getPropertyValues(String Key) {
		return returnMap.get(Key);
	}
	
	@Bean
	public HashMap<String, String> setPropertyValues() throws Exception {
		Properties configProp = new Properties();
		InputStream inPropFile = null;
		if (StringUtils.isNotBlank(dbPath)) {
			inPropFile = new FileInputStream(dbPath);
			configProp.load(inPropFile);
			inPropFile.close();
		}
		configProp.forEach((key, value) -> {
			returnMap.put(String.valueOf(key), String.valueOf(value));
		});
		return returnMap;
	}
	
	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}
}
