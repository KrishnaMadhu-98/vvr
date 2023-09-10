package com.framework.config;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Properties;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
@Component
public class DButility {
	
	private static DButility dbutility;

	public static DButility getInstance() {
		if (dbutility == null) {
			dbutility = new DButility();
		}
		return dbutility;
	}
	static HashMap<String, String> dbProperties = new HashMap<String,String>();
	
	public String dbUlitityPropLoad(String path) throws IOException
	{
		String ss=path;
		Properties configProp = new Properties();
		InputStream inPropFile = null;
			if (StringUtils.isNotBlank(path)) {
				inPropFile = new FileInputStream(path);
				configProp.load(inPropFile);
				inPropFile.close();
				if(StringUtils.isNotBlank(configProp.getProperty("url"))){
					dbProperties.put("url", configProp.getProperty("url").toString().trim());
				}
				if(StringUtils.isNotBlank(configProp.getProperty("username"))){
					dbProperties.put("username", configProp.getProperty("username").toString().trim());
				}
				if(StringUtils.isNotBlank(configProp.getProperty("password"))){
					dbProperties.put("password", configProp.getProperty("password").toString().trim());
				}
				}
		return ss;
	}
	
	public String dbutilityProp(String key)
	{
		String value="";
		value=dbProperties.get(key);
		return value;
	}
}
