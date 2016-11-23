package com.zhanwkj.fx2.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * 读取文件
 * @author Chitry
 *
 */
public class ReadConfig {
	
	public static String path;
	public static String appid;
	public static String secret;
	public static String mchid;
	public static String partnerkey;
	public static String netname;
	public static String sms_url;
	public static String user_account;
	public static String user_password;
	
	 static {
		try {
			InputStream in = ReadConfig.class.getClassLoader().getResourceAsStream("config.properties");
			Properties props = new Properties();
			props.load(in);
			path = props.getProperty("file_path");
			appid = props.getProperty("wx_appid");
			secret = props.getProperty("wx_secret");
			mchid = props.getProperty("wx_mchid");
			partnerkey = props.getProperty("wx_partnerkey");
			netname = props.getProperty("net_name");
			sms_url = props.getProperty("sms_url");
			user_account = props.getProperty("user_account");
			user_password = props.getProperty("user_password");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
     * 以字符为单位读取文件，常用于读文本，数字等类型的文件
     */
    public static String readFileByChars() {
    	String fileName = path;
    	String content = "\r\n";
    	File file = new File(fileName);
        BufferedReader reader = null;
        try {
            System.out.println("以行为单位读取文件内容，一次读一整行：");
            reader = new BufferedReader(new FileReader(file));
            String tempString = null;
            int line = 1;
            // 一次读入一行，直到读入null为文件结束
            while ((tempString = reader.readLine()) != null) {
                // 显示行号
                System.out.println("line " + line + ": " + tempString);
                content = content+tempString+"\r\n";
                line++;
            }
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {
                }
            }
        }
		return content;
    }
}
