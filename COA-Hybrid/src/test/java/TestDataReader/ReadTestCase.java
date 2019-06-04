package TestDataReader;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 * @author IGT
 *
 */
public class ReadTestCase {


	/**
	 * This Method reads and store the excel sheet of test data into a map of map.
	 * @param filePath The path to the test data workbook 
	 * @return The test data Map <String,Map<String,String>>
	 */
	public Map <String,Map<String,String>> readTestCaseSheet(String filePath,String sheetName) 

	{
		FileInputStream xlsFile=null;
		XSSFWorkbook workbook=null;
		XSSFSheet sheet=null;
		XSSFCell cell = null;
		Row r=null;
		String s = null;
		Map <String,Map<String,String>> tcMap = new LinkedHashMap<String,Map<String,String>>();
		try{

			xlsFile= new FileInputStream(filePath);
			workbook = new XSSFWorkbook(xlsFile);
			XSSFFormulaEvaluator.evaluateAllFormulaCells(workbook);//to read the updated formula value from the excel
			sheet = workbook.getSheet(sheetName);
			Map <String,String> testData = null;
			for (Row row : sheet)
			{
				r=row;
				testData = new LinkedHashMap<String,String>();
				if(row.getRowNum()== 0)
				{
					continue;
				}
				Iterator<Cell> colName = sheet.getRow(0).cellIterator();
				while(colName.hasNext())
				{
					cell = (XSSFCell) colName.next();
					int i = cell.getColumnIndex();


					testData.put(cell.getStringCellValue().trim(), row.getCell(i).getStringCellValue().trim());
					//System.out.println(row.getCell(i).getStringCellValue());
				/*}
				if(sheetName.equalsIgnoreCase("Main"))
				{*/
					/*s= row.getCell(1).getStringCellValue().trim();
				}
				else
				{*/
					s= row.getCell(0).getStringCellValue().trim();
				}
				tcMap.put(s, testData);

			}
			System.out.println(tcMap);
			//System.out.println(tcMap);
			//System.out.println(testData);
		}catch (IOException e)
		{System.out.println("Test Case sheet not found");
		e.printStackTrace();}
		catch (NullPointerException e1){System.out.println("Invalid data is present on TestData at Row Number : "+r.getRowNum()+ " of sheet : "+sheetName);}
		return tcMap;
	}
	public ArrayList<String> pickTestCase(String filePath,String sheetName) 
	{
		FileInputStream xlsFile=null;
		XSSFWorkbook workbook=null;
		XSSFSheet sheet = null;
		//XSSFCell cell = null;
		Row r=null;
		//Row r1=null;
		ArrayList<String> l = null;
		//Map <String,ArrayList<String>> tcMap = new LinkedHashMap<String,ArrayList<String>>();
		try{

			xlsFile= new FileInputStream(filePath);
			workbook = new XSSFWorkbook(xlsFile);
			sheet = workbook.getSheet(sheetName);
			r=sheet.getRow(0);
			l = new ArrayList<String>();
			for (int i=1;i<sheet.getLastRowNum()+1/*r.getLastCellNum()*/;i++)

			{
				//for (int j=0;j<r.getLastCellNum();j++)

				//{
				if(sheet.getRow(i).getCell(1).getStringCellValue().equalsIgnoreCase("Yes"))
				{

					l.add(sheet.getRow(i).getCell(0).getStringCellValue());
				//}
				}
				//tcMap.put(r.getCell(i).getStringCellValue(), l);
			}
			/*Iterator<String> iterator = l.iterator();
			while (iterator.hasNext())
			{
				
			}*/
			for (String temp : l)
			{
				System.out.println(temp);
				
			}

}catch (Exception e){System.out.println("Something Went Wrong");
e.printStackTrace();}
		//System.out.println(tcMap);
		return l;
	}
	

}
