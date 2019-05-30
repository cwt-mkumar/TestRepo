package TestDataReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import managers.FileReaderManager;

/**
 * @author IGT
 *
 */
public class ReadObjectRepository {

	/**
	 * This Method reads and store the excel sheet of object repository into a map of map.
	 * @param filePath The path to the Object Repository workbook 
	 * @return The ObjectRepository  Map <String,Map<String,String>>
	 */
	
	public static Map <String,Map<String,String>> orMap;
	
	
	
	public static Map <String,Map<String,String>> readObjectsheet(String filePath) 
	{
		FileInputStream xlsFile=null;
		XSSFWorkbook workbook=null;
		XSSFSheet sheet=null;
		String sheetName=null;
		Row r=null;
		orMap = new TreeMap<String,Map<String,String>>();
		try{
			xlsFile= new FileInputStream(filePath);
			workbook = new XSSFWorkbook(xlsFile);
			for(int k=0;k<workbook.getNumberOfSheets();k++)
			{		
				sheetName=workbook.getSheetName(k);
				sheet = workbook.getSheet(sheetName);
				Map <String,String> objectData ;
				for (Row row : sheet)
				{
					r=row;
					objectData = new TreeMap<>();
					if(row.getRowNum()== 0)
					{
						continue;
					}
					Iterator<Cell> colName = sheet.getRow(0).cellIterator();
					while(colName.hasNext())
					{
						XSSFCell cell = (XSSFCell) colName.next();
						int i = cell.getColumnIndex();
						try{
							objectData.put(cell.getStringCellValue(), row.getCell(i).getStringCellValue());
						}catch (NullPointerException e)
						{
							//System.out.println("Invalid Entry found in Object Repository sheet\n");
						}

						//System.out.println(row.getCell(i).getStringCellValue());
					}
					String s= sheetName+"-"+row.getCell(0).getStringCellValue();
					//System.out.println(s);
					orMap.put(s, objectData);
/*					System.out.println(orMap);
					for(Map.Entry m:objectData.entrySet())
					{
						System.out.println(m.getValue());
					}*/
				}
			}
			/*System.out.println(orMap);
			for(String key:orMap.keySet())
			{
				System.out.println(orMap.get(key));
			}
			//System.out.println(tcMap);
*/			//System.out.println(testData);
		}catch (IOException e)
		{System.out.println("Test Case sheet not found");
		e.printStackTrace();}
		catch(NullPointerException e1)
		{e1.printStackTrace();System.out.println("Invalid data is present on Object Repository at Row Number : "+r.getRowNum()+ " of sheet : "+sheetName);}





		return orMap;
	}
}
