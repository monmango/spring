package part01;

import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

public class ServiceImp implements Service {

	private MemDAO dao;
	private TransactionTemplate transactionTemplate;

	public ServiceImp() {
	}

	public void setDao(MemDAO dao) {
		this.dao = dao;
	}

	public void setTransactionTemplate(TransactionTemplate transactionTemplate) {
		this.transactionTemplate = transactionTemplate;
	}

	@Override
	public void insertProcess() {
		/* 트랜스엑션을 묶어 준다. */
		Object result = transactionTemplate.execute(new TransactionCallback<Object>() {
			@Override
			public Object doInTransaction(TransactionStatus status) {
				try {
					dao.insertMethod(new MemDTO(50, "용팔이", 50, "경기"));
					dao.insertMethod(new MemDTO(51, "유대위", 20, "대전"));
					return "ok";
				} catch (Exception e) {
					status.setRollbackOnly();
					return e.toString();
				}
			}
		});
		System.out.println("result:" + result);
	}// end insertProcess()

}// end class
