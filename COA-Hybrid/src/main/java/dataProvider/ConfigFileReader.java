package dataProvider;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

public class ConfigFileReader {
	 public Properties properties;
	 public Properties properties1;
	 public String propertyFilePath= "D://CheapOair.com-Hybrid//src//main//java//config//config.properties";
	 public String properties1FilePath= "D://CheapOair.com-Hybrid//src//main//java//config//CWTConfig.properties";
	 
	 
	 public ConfigFileReader(){
	 BufferedReader reader, reader1;
	 try {
	 reader = new BufferedReader(new FileReader(propertyFilePath));
	 reader1 = new BufferedReader(new FileReader(properties1FilePath));
	 properties = new Properties();
	 properties1 = new Properties();
	 try {
	 properties.load(reader);
	 properties1.load(reader1);
	 reader.close();
	 } catch (IOException e) {
	 e.printStackTrace();
	 }
	 } catch (FileNotFoundException e) {
	 e.printStackTrace();
	 throw new RuntimeException("Configuration properties file not found");
	 } 
	 }
}
