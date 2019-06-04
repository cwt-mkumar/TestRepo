package testUtils;

import org.apache.log4j.Logger;
import org.testng.ITestContext;
import org.testng.ITestListener;
import org.testng.ITestResult;



public class TestListener implements ITestListener {

	static Logger log = Logger.getLogger(TestListener.class.getName());

	@Override
	public void onTestSuccess(final ITestResult tr) {
		log.info("Test :" + tr.getName() + " -PASSED");
		log.info(tr.getTestClass());
		log.info("Priority on this method is: " + tr.getMethod().getPriority());
		log.info(".....");
	}

	@Override
	public void onTestFailure(final ITestResult tr) {
		//this.verifyException(tr);
		log.info("Test :" + tr.getName() + " -FAILED");
		log.info("Priority on this method is: " + tr.getMethod().getPriority());
		log.info(".....");
	}

	@Override
	public void onTestSkipped(final ITestResult tr) {
		//this.verifyException(tr);
		log.info("Test :" + tr.getName() + " -SKIPPED");
		log.info("Priority on this method is: " + tr.getMethod().getPriority());
		log.info(".....");
	}

	@Override
	public void onFinish(ITestContext arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onStart(ITestContext arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onTestFailedButWithinSuccessPercentage(ITestResult arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onTestStart(ITestResult arg0) {
		// TODO Auto-generated method stub
		
	}
}