package testUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import managers.FileReaderManager;
import testBase.TestBase;

public class ExcelUtil extends TestBase {


	/**
	 * Method to read TestController file and
	 * create hash map for test cases to execute in each scenario. 
	 */
	
	public void readTestController() {
		Workbook masterController = null;
		String testControllerPath = FileReaderManager.getInstance().getConfigReader().properties.getProperty("EnvTestControllerPath");
		try {
			File file = new File(testControllerPath);
			FileInputStream inputStream = new FileInputStream(file);
		
			if(testControllerPath.endsWith("xlsx")) {
				masterController = new XSSFWorkbook(inputStream);	
			}
			else if(testControllerPath.endsWith("xls")) {
				//masterController = new HSSFWorkbook(inputStream);
			}
		} catch(FileNotFoundException e) {
			 LOGGER.info("Test Controller file not found");
		} catch(IOException e) {
			 LOGGER.info("IO Exception in Test Executor Class");
		}
		
		Sheet EnvVariableSheet = masterController.getSheet("EnviromentVariables");
		Iterator<Row> envIterator = EnvVariableSheet.iterator();
		while(envIterator.hasNext()) {
			Row row = envIterator.next();
			Cell envVariableName = row.getCell(0);
			Cell envVariableValue = row.getCell(1);
			if(envVariableName!=null) {
				envVariablesMap.put(envVariableName.getStringCellValue(), envVariableValue.getStringCellValue());
			}
			
		}
		Sheet masterSheet = masterController.getSheet("MasterSheet");
		Iterator<Row> iterator = masterSheet.iterator();
		while(iterator.hasNext()) {
			Row row = iterator.next();
			Cell scenarioName = row.getCell(1);
			Cell runMode = row.getCell(2);
			testControllerMasterMap.put(scenarioName.getStringCellValue(), runMode.getStringCellValue());
		}
		Set<Map.Entry<String, String>> entrySet = testControllerMasterMap.entrySet();
		for(Entry<String, String> entry : entrySet) {
			String testScenario = entry.getKey();
			String value = entry.getValue();
			if(value.equalsIgnoreCase("Yes")) {
				Sheet scenarioSheet = masterController.getSheet(testScenario);
				Iterator<Row> testIterator = scenarioSheet.iterator();
				while(testIterator.hasNext()) {
					Row row = testIterator.next();
					Cell testCaseName = row.getCell(1);
					Cell runMode = row.getCell(2);
					testControllerTestCasesMap.put(testCaseName.getStringCellValue(), runMode.getStringCellValue());
				}
			}
		}
	}
	
	
	/**
	 * Method to read test data of currently executing test case.
	 * @param sheetName
	 * @param testName
	 */
	public void readTestData(String sheetName, String testName) {
		Workbook testDataSheet = null;
		String testDataPath = FileReaderManager.getInstance().getConfigReader().properties.getProperty("EnvTestDataPath");
		try {
			File file = new File(testDataPath);
			FileInputStream inputStream = new FileInputStream(file);
		
			if(testDataPath.endsWith("xlsx")) {
				testDataSheet = new XSSFWorkbook(inputStream);	
			}
			else if(testDataPath.endsWith("xls")) {
				testDataSheet = new HSSFWorkbook(inputStream);
			}
		} catch(FileNotFoundException e) {
			 LOGGER.info("Test Controller file not found");
		} catch(IOException e) {
			 LOGGER.info("IO Exception in Test Executor Class");
		}
		Sheet scenarioSheet = testDataSheet.getSheet(sheetName);

		Iterator<Row> testIterator = scenarioSheet.iterator();
		Row headerRow = scenarioSheet.getRow(0);
		while(testIterator.hasNext()) {
			Row row = testIterator.next();
			Cell testCaseName = row.getCell(1);
			if(testName.equalsIgnoreCase(testCaseName.getStringCellValue())) {
				for(int cellNum = 0; cellNum < headerRow.getLastCellNum() + 1; cellNum++) {
					Cell columnName = headerRow.getCell(cellNum);
					Cell value = row.getCell(cellNum);
					if(columnName!=null) {
						testData.put(columnName.getStringCellValue(), value.getStringCellValue());
					}
				}	
				break;
			}else {
				continue;
			}
		}
	}

	
	
	/**
	 * Method to read test data of currently executing test case.
	 * 
	 */
	public String readPnrFlatFile(String typeOfData) {
		Workbook testDataSheet = null;
		String pnrCellText = null;
		String testDataPath = "C://Users//vipul.garg//Desktop//Get.xlsx";
		try {
			File file = new File(testDataPath);
			FileInputStream inputStream = new FileInputStream(file);
		
			if(testDataPath.endsWith("xlsx")) {
				testDataSheet = new XSSFWorkbook(inputStream);	
			}
			else if(testDataPath.endsWith("xls")) {
				testDataSheet = new HSSFWorkbook(inputStream);
			}
		} catch(FileNotFoundException e) {
			 LOGGER.info("Test Controller file not found");
		} catch(IOException e) {
			 LOGGER.info("IO Exception in Test Executor Class");
		}
		Sheet scenarioSheet = testDataSheet.getSheetAt(0);
		//Sheet scenarioSheet = testDataSheet.getSheet(sheetName);
		
		if(typeOfData.equalsIgnoreCase("PNR")){
			Row pnrRow = scenarioSheet.getRow(4);
			Cell value = pnrRow.getCell(0);
			pnrCellText = value.getStringCellValue();
			pnrCellText = pnrCellText.replace("|", "@");
			String[] pnrArray =  pnrCellText.split("@");
			pnrCellText = pnrArray[1];
			pnrCellText = pnrCellText.replace("DL RECORD LOCATOR", " ");
			pnrCellText = pnrCellText.replace("ETKT ELIGIBLE¬", " ");
			pnrCellText = pnrCellText.trim();
		}else if(typeOfData.equalsIgnoreCase("eTicketNo")) {
			Row pnrRow = scenarioSheet.getRow(31);
			Cell value = pnrRow.getCell(0);
			pnrCellText = value.getStringCellValue();
			pnrCellText = pnrCellText.replace("|", "@");
			String[] pnrArray =  pnrCellText.split("@");
			pnrCellText = pnrArray[1];
			pnrCellText = pnrCellText.replace("Clr  Clear All         | >", " ");
			pnrCellText = pnrCellText.replace("HOOKED     ¬  |", " ");
			pnrCellText = pnrCellText.trim();
		}
		return pnrCellText;
		
		
	}
	
	

	/**
	 * Method to write data to currently executing test case.
	 * @param sheetName
	 * @param testName
	 * @throws IOException 
	 */
	public void writeTestData(String sheetName, String testName) throws IOException {
		Workbook testDataSheet = null;
		String testDataPath = FileReaderManager.getInstance().getConfigReader().properties.getProperty("EnvTestDataPath");
		
		File file = new File(testDataPath);
		FileInputStream inputStream = new FileInputStream(file);
		FileOutputStream outputStream = new FileOutputStream(file);
	
		try {
			if(testDataPath.endsWith("xlsx")) {
				testDataSheet = new XSSFWorkbook(inputStream);	
			}
			else if(testDataPath.endsWith("xls")) {
				testDataSheet = new HSSFWorkbook(inputStream);
			}
		} catch(FileNotFoundException e) {
			 LOGGER.info("Test Controller file not found");
		} catch(IOException e) {
			 LOGGER.info("IO Exception in Test Executor Class");
		}
		Sheet scenarioSheet = testDataSheet.getSheet(sheetName);

		Iterator<Row> testIterator = scenarioSheet.iterator();
		Row headerRow = scenarioSheet.getRow(0);
		while(testIterator.hasNext()) {
			Row row = testIterator.next();
			Cell testCaseName = row.getCell(1);
			if(testName.equalsIgnoreCase(testCaseName.getStringCellValue())) {
				for(int cellNum = 0; cellNum < headerRow.getLastCellNum() + 1; cellNum++) {
					Cell columnName = headerRow.getCell(cellNum);
					if(columnName.getStringCellValue().equalsIgnoreCase("PNRNumber")) {
						row.getCell(cellNum).setCellValue("ABC");
						testDataSheet.write(outputStream);
						break;
					}
					
				}	
				break;
			}else {
				continue;
			}
		}
		inputStream.close();
		outputStream.close();
	}


/**
 * Method to read Pax Name test data of currently executing test case.
 * @param sheetName
 * @param testName
 */
public void readpaxname(String sheetName, String testName) {
	Workbook paxnameDataSheet = null;
	String paxnameDataPath = FileReaderManager.getInstance().getConfigReader().properties.getProperty("EnvTestDataPath");
	try {
		File file = new File(paxnameDataPath);
		FileInputStream inputStream = new FileInputStream(file);
	
		if(paxnameDataPath.endsWith("xlsx")) {
			paxnameDataSheet = new XSSFWorkbook(inputStream);	
		}
		else if(paxnameDataPath.endsWith("xls")) {
			paxnameDataSheet = new HSSFWorkbook(inputStream);
		}
	} catch(FileNotFoundException e) {
		 LOGGER.info("Test Controller file not found");
	} catch(IOException e) {
		 LOGGER.info("IO Exception in Test Executor Class");
	}
	Sheet scenarioSheet = paxnameDataSheet.getSheet(sheetName);

	Iterator<Row> testIterator = scenarioSheet.iterator();
	Row headerRow = scenarioSheet.getRow(0);
	while(testIterator.hasNext()) {
		Row row = testIterator.next();
		Cell testCaseName = row.getCell(1);
		if(testName.equalsIgnoreCase(testCaseName.getStringCellValue())) {
			for(int cellNum = 0; cellNum < headerRow.getLastCellNum() + 1; cellNum++) {
				Cell columnName = headerRow.getCell(cellNum);
				Cell value = row.getCell(cellNum);
				if(columnName!=null) {
					testData.put(columnName.getStringCellValue(), value.getStringCellValue());
				}
			}	
			break;
		}else {
			continue;
		}
	}
}
}
